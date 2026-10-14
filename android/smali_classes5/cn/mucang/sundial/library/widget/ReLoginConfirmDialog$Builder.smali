.class public final Lcn/mucang/sundial/library/widget/ReLoginConfirmDialog$Builder;
.super Lcn/mucang/sundial/library/widget/BlankDialog$Builder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/sundial/library/widget/ReLoginConfirmDialog;
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
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0010\u001a\u00020\u000f\u0012\u0006\u0010\u0012\u001a\u00020\u0011\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u001f\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u00022\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007R$\u0010\t\u001a\u0004\u0018\u00010\u00088\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\t\u0010\n\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000e\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcn/mucang/sundial/library/widget/ReLoginConfirmDialog$Builder;",
        "Lcn/mucang/sundial/library/widget/BlankDialog$Builder;",
        "",
        "content",
        "Lcn/mucang/sundial/library/widget/DialogCallBack;",
        "callBack",
        "setContent",
        "(Ljava/lang/String;Lcn/mucang/sundial/library/widget/DialogCallBack;)Lcn/mucang/sundial/library/widget/ReLoginConfirmDialog$Builder;",
        "Lcn/mucang/sundial/library/widget/BlankDialog;",
        "dialog",
        "Lcn/mucang/sundial/library/widget/BlankDialog;",
        "getDialog",
        "()Lcn/mucang/sundial/library/widget/BlankDialog;",
        "setDialog",
        "(Lcn/mucang/sundial/library/widget/BlankDialog;)V",
        "Landroid/content/Context;",
        "context",
        "",
        "useTheme",
        "<init>",
        "(Landroid/content/Context;Z)V",
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
.field private dialog:Lcn/mucang/sundial/library/widget/BlankDialog;


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 0

    const-string p2, "context"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/sundial/library/widget/BlankDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/sundial/library/databinding/TtDialogReLoginComfirmBinding;->inflate(Landroid/view/LayoutInflater;)Lcn/mucang/sundial/library/databinding/TtDialogReLoginComfirmBinding;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/mucang/sundial/library/widget/BlankDialog$Builder;->setCustomViewBinding(Landroidx/viewbinding/a;)Lcn/mucang/sundial/library/widget/BlankDialog$Builder;

    const/4 p1, 0x1

    .line 3
    invoke-virtual {p0, p1}, Lcn/mucang/sundial/library/widget/BlankDialog$Builder;->setCancellable(Z)Lcn/mucang/sundial/library/widget/BlankDialog$Builder;

    .line 4
    invoke-virtual {p0, p1}, Lcn/mucang/sundial/library/widget/BlankDialog$Builder;->setCancellableOnTouchOutside(Z)Lcn/mucang/sundial/library/widget/BlankDialog$Builder;

    .line 5
    new-instance p1, Lcn/mucang/sundial/library/widget/ReLoginConfirmDialog$Builder$1;

    invoke-direct {p1, p0}, Lcn/mucang/sundial/library/widget/ReLoginConfirmDialog$Builder$1;-><init>(Lcn/mucang/sundial/library/widget/ReLoginConfirmDialog$Builder;)V

    invoke-virtual {p0, p1}, Lcn/mucang/sundial/library/widget/BlankDialog$Builder;->setViewListener(Lcn/mucang/sundial/library/widget/BlankDialog$ViewListener;)Lcn/mucang/sundial/library/widget/BlankDialog$Builder;

    return-void
.end method


# virtual methods
.method public final getDialog()Lcn/mucang/sundial/library/widget/BlankDialog;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/library/widget/ReLoginConfirmDialog$Builder;->dialog:Lcn/mucang/sundial/library/widget/BlankDialog;

    return-object v0
.end method

.method public final setContent(Ljava/lang/String;Lcn/mucang/sundial/library/widget/DialogCallBack;)Lcn/mucang/sundial/library/widget/ReLoginConfirmDialog$Builder;
    .locals 4

    const-string v0, "content"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcn/mucang/sundial/library/widget/BlankDialog$Builder;->getParams()Lcn/mucang/sundial/library/widget/BlankDialog$Params;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/sundial/library/widget/BlankDialog$Params;->getCustomViewBinding()Landroidx/viewbinding/a;

    move-result-object v0

    instance-of v1, v0, Lcn/mucang/sundial/library/databinding/TtDialogReLoginComfirmBinding;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    check-cast v0, Lcn/mucang/sundial/library/databinding/TtDialogReLoginComfirmBinding;

    if-eqz v0, :cond_1

    .line 2
    iget-object v1, v0, Lcn/mucang/sundial/library/databinding/TtDialogReLoginComfirmBinding;->title:Landroid/widget/TextView;

    const-string v2, "title"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u91cd\u590d\u767b\u5f55\u63d0\u9192\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object v1, v0, Lcn/mucang/sundial/library/databinding/TtDialogReLoginComfirmBinding;->subject2:Landroid/widget/TextView;

    new-instance v2, Lcn/mucang/sundial/library/widget/ReLoginConfirmDialog$Builder$setContent$$inlined$apply$lambda$1;

    invoke-direct {v2, p0, p1, p2}, Lcn/mucang/sundial/library/widget/ReLoginConfirmDialog$Builder$setContent$$inlined$apply$lambda$1;-><init>(Lcn/mucang/sundial/library/widget/ReLoginConfirmDialog$Builder;Ljava/lang/String;Lcn/mucang/sundial/library/widget/DialogCallBack;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    iget-object v0, v0, Lcn/mucang/sundial/library/databinding/TtDialogReLoginComfirmBinding;->subject3:Landroid/widget/TextView;

    new-instance v1, Lcn/mucang/sundial/library/widget/ReLoginConfirmDialog$Builder$setContent$$inlined$apply$lambda$2;

    invoke-direct {v1, p0, p1, p2}, Lcn/mucang/sundial/library/widget/ReLoginConfirmDialog$Builder$setContent$$inlined$apply$lambda$2;-><init>(Lcn/mucang/sundial/library/widget/ReLoginConfirmDialog$Builder;Ljava/lang/String;Lcn/mucang/sundial/library/widget/DialogCallBack;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-object p0
.end method

.method public final setDialog(Lcn/mucang/sundial/library/widget/BlankDialog;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/sundial/library/widget/ReLoginConfirmDialog$Builder;->dialog:Lcn/mucang/sundial/library/widget/BlankDialog;

    return-void
.end method
