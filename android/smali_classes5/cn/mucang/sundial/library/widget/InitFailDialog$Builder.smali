.class public final Lcn/mucang/sundial/library/widget/InitFailDialog$Builder;
.super Lcn/mucang/sundial/library/widget/BlankDialog$Builder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/sundial/library/widget/InitFailDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u000e\u001a\u00020\u0014\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u0017\u0010\u0004\u001a\u00020\u00002\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005R$\u0010\u0007\u001a\u0004\u0018\u00010\u00068\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0007\u0010\u0008\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000cR$\u0010\u000e\u001a\u0004\u0018\u00010\r8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000e\u0010\u000f\u001a\u0004\u0008\u0010\u0010\u0011\"\u0004\u0008\u0012\u0010\u0013\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcn/mucang/sundial/library/widget/InitFailDialog$Builder;",
        "Lcn/mucang/sundial/library/widget/BlankDialog$Builder;",
        "Lcn/mucang/sundial/library/widget/DialogCallBack;",
        "callBack",
        "setContent",
        "(Lcn/mucang/sundial/library/widget/DialogCallBack;)Lcn/mucang/sundial/library/widget/InitFailDialog$Builder;",
        "Lcn/mucang/sundial/library/widget/BlankDialog;",
        "dialog",
        "Lcn/mucang/sundial/library/widget/BlankDialog;",
        "getDialog",
        "()Lcn/mucang/sundial/library/widget/BlankDialog;",
        "setDialog",
        "(Lcn/mucang/sundial/library/widget/BlankDialog;)V",
        "Landroid/app/Activity;",
        "context",
        "Landroid/app/Activity;",
        "getContext",
        "()Landroid/app/Activity;",
        "setContext",
        "(Landroid/app/Activity;)V",
        "Landroid/content/Context;",
        "<init>",
        "(Landroid/content/Context;)V",
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
.field private context:Landroid/app/Activity;

.field private dialog:Lcn/mucang/sundial/library/widget/BlankDialog;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/sundial/library/widget/BlankDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2
    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    iput-object v0, p0, Lcn/mucang/sundial/library/widget/InitFailDialog$Builder;->context:Landroid/app/Activity;

    .line 3
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/sundial/library/databinding/TtDialogInitFailedBinding;->inflate(Landroid/view/LayoutInflater;)Lcn/mucang/sundial/library/databinding/TtDialogInitFailedBinding;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/mucang/sundial/library/widget/BlankDialog$Builder;->setCustomViewBinding(Landroidx/viewbinding/a;)Lcn/mucang/sundial/library/widget/BlankDialog$Builder;

    const/4 p1, 0x0

    .line 4
    invoke-virtual {p0, p1}, Lcn/mucang/sundial/library/widget/BlankDialog$Builder;->setCancellable(Z)Lcn/mucang/sundial/library/widget/BlankDialog$Builder;

    .line 5
    invoke-virtual {p0, p1}, Lcn/mucang/sundial/library/widget/BlankDialog$Builder;->setCancellableOnTouchOutside(Z)Lcn/mucang/sundial/library/widget/BlankDialog$Builder;

    .line 6
    new-instance p1, Lcn/mucang/sundial/library/widget/InitFailDialog$Builder$1;

    invoke-direct {p1, p0}, Lcn/mucang/sundial/library/widget/InitFailDialog$Builder$1;-><init>(Lcn/mucang/sundial/library/widget/InitFailDialog$Builder;)V

    invoke-virtual {p0, p1}, Lcn/mucang/sundial/library/widget/BlankDialog$Builder;->setViewListener(Lcn/mucang/sundial/library/widget/BlankDialog$ViewListener;)Lcn/mucang/sundial/library/widget/BlankDialog$Builder;

    return-void
.end method


# virtual methods
.method public final getContext()Landroid/app/Activity;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/library/widget/InitFailDialog$Builder;->context:Landroid/app/Activity;

    return-object v0
.end method

.method public final getDialog()Lcn/mucang/sundial/library/widget/BlankDialog;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/library/widget/InitFailDialog$Builder;->dialog:Lcn/mucang/sundial/library/widget/BlankDialog;

    return-object v0
.end method

.method public final setContent(Lcn/mucang/sundial/library/widget/DialogCallBack;)Lcn/mucang/sundial/library/widget/InitFailDialog$Builder;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcn/mucang/sundial/library/widget/BlankDialog$Builder;->getParams()Lcn/mucang/sundial/library/widget/BlankDialog$Params;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/sundial/library/widget/BlankDialog$Params;->getCustomViewBinding()Landroidx/viewbinding/a;

    move-result-object v0

    instance-of v1, v0, Lcn/mucang/sundial/library/databinding/TtDialogInitFailedBinding;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    check-cast v0, Lcn/mucang/sundial/library/databinding/TtDialogInitFailedBinding;

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {v0}, Lcn/mucang/sundial/library/databinding/TtDialogInitFailedBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v1

    const-string v2, "viewBinding.root"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcn/mucang/sundial/android/tcp/utils/DeviceUtils;->isSingleApk(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 3
    iget-object v1, v0, Lcn/mucang/sundial/library/databinding/TtDialogInitFailedBinding;->settings:Landroid/widget/TextView;

    const-string v2, "viewBinding.settings"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "\u9000\u51fa"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    :cond_1
    iget-object v1, v0, Lcn/mucang/sundial/library/databinding/TtDialogInitFailedBinding;->settings:Landroid/widget/TextView;

    new-instance v2, Lcn/mucang/sundial/library/widget/InitFailDialog$Builder$setContent$$inlined$apply$lambda$1;

    invoke-direct {v2, p0, p1}, Lcn/mucang/sundial/library/widget/InitFailDialog$Builder$setContent$$inlined$apply$lambda$1;-><init>(Lcn/mucang/sundial/library/widget/InitFailDialog$Builder;Lcn/mucang/sundial/library/widget/DialogCallBack;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5
    iget-object v1, v0, Lcn/mucang/sundial/library/databinding/TtDialogInitFailedBinding;->ok:Landroid/widget/TextView;

    new-instance v2, Lcn/mucang/sundial/library/widget/InitFailDialog$Builder$setContent$$inlined$apply$lambda$2;

    invoke-direct {v2, p0, p1}, Lcn/mucang/sundial/library/widget/InitFailDialog$Builder$setContent$$inlined$apply$lambda$2;-><init>(Lcn/mucang/sundial/library/widget/InitFailDialog$Builder;Lcn/mucang/sundial/library/widget/DialogCallBack;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6
    new-instance p1, Lcn/mucang/sundial/library/util/ClickController;

    const/4 v1, 0x5

    invoke-direct {p1, v1}, Lcn/mucang/sundial/library/util/ClickController;-><init>(I)V

    .line 7
    iget-object v0, v0, Lcn/mucang/sundial/library/databinding/TtDialogInitFailedBinding;->msg:Landroid/widget/TextView;

    new-instance v1, Lcn/mucang/sundial/library/widget/InitFailDialog$Builder$setContent$1$3;

    invoke-direct {v1, p0, p1}, Lcn/mucang/sundial/library/widget/InitFailDialog$Builder$setContent$1$3;-><init>(Lcn/mucang/sundial/library/widget/InitFailDialog$Builder;Lcn/mucang/sundial/library/util/ClickController;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    return-object p0
.end method

.method public final setContext(Landroid/app/Activity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/sundial/library/widget/InitFailDialog$Builder;->context:Landroid/app/Activity;

    return-void
.end method

.method public final setDialog(Lcn/mucang/sundial/library/widget/BlankDialog;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/sundial/library/widget/InitFailDialog$Builder;->dialog:Lcn/mucang/sundial/library/widget/BlankDialog;

    return-void
.end method
