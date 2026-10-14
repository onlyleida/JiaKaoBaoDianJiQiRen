.class public final Lcn/mucang/sundial/library/widget/UpgradeConfirmDialog$Builder;
.super Lcn/mucang/sundial/library/widget/BlankDialog$Builder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/sundial/library/widget/UpgradeConfirmDialog;
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
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u001a\u001a\u00020\u0019\u0012\u0006\u0010\u001c\u001a\u00020\u001b\u00a2\u0006\u0004\u0008\u001d\u0010\u001eJ\u001f\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u001f\u0010\r\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\t2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u000b\u00a2\u0006\u0004\u0008\r\u0010\u000eR$\u0010\u0010\u001a\u0004\u0018\u00010\u000f8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0010\u0010\u0011\u001a\u0004\u0008\u0012\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015R\u0018\u0010\u0017\u001a\u0004\u0018\u00010\u00168\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0017\u0010\u0018\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcn/mucang/sundial/library/widget/UpgradeConfirmDialog$Builder;",
        "Lcn/mucang/sundial/library/widget/BlankDialog$Builder;",
        "",
        "delay",
        "Lcn/mucang/sundial/library/databinding/TtDialogUpgradeComfirmBinding;",
        "viewBinding",
        "Lkotlin/v;",
        "startCountDownUpload",
        "(ILcn/mucang/sundial/library/databinding/TtDialogUpgradeComfirmBinding;)V",
        "",
        "content",
        "Lcn/mucang/sundial/library/widget/DialogCallBack;",
        "callBack",
        "setContent",
        "(Ljava/lang/String;Lcn/mucang/sundial/library/widget/DialogCallBack;)Lcn/mucang/sundial/library/widget/UpgradeConfirmDialog$Builder;",
        "Lcn/mucang/sundial/library/widget/BlankDialog;",
        "dialog",
        "Lcn/mucang/sundial/library/widget/BlankDialog;",
        "getDialog",
        "()Lcn/mucang/sundial/library/widget/BlankDialog;",
        "setDialog",
        "(Lcn/mucang/sundial/library/widget/BlankDialog;)V",
        "Landroid/os/CountDownTimer;",
        "upgradeCountDownTimer",
        "Landroid/os/CountDownTimer;",
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

.field private upgradeCountDownTimer:Landroid/os/CountDownTimer;


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

    invoke-static {p1}, Lcn/mucang/sundial/library/databinding/TtDialogUpgradeComfirmBinding;->inflate(Landroid/view/LayoutInflater;)Lcn/mucang/sundial/library/databinding/TtDialogUpgradeComfirmBinding;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/mucang/sundial/library/widget/BlankDialog$Builder;->setCustomViewBinding(Landroidx/viewbinding/a;)Lcn/mucang/sundial/library/widget/BlankDialog$Builder;

    const/4 p1, 0x1

    .line 3
    invoke-virtual {p0, p1}, Lcn/mucang/sundial/library/widget/BlankDialog$Builder;->setCancellable(Z)Lcn/mucang/sundial/library/widget/BlankDialog$Builder;

    .line 4
    invoke-virtual {p0, p1}, Lcn/mucang/sundial/library/widget/BlankDialog$Builder;->setCancellableOnTouchOutside(Z)Lcn/mucang/sundial/library/widget/BlankDialog$Builder;

    .line 5
    new-instance p1, Lcn/mucang/sundial/library/widget/UpgradeConfirmDialog$Builder$1;

    invoke-direct {p1, p0}, Lcn/mucang/sundial/library/widget/UpgradeConfirmDialog$Builder$1;-><init>(Lcn/mucang/sundial/library/widget/UpgradeConfirmDialog$Builder;)V

    invoke-virtual {p0, p1}, Lcn/mucang/sundial/library/widget/BlankDialog$Builder;->setViewListener(Lcn/mucang/sundial/library/widget/BlankDialog$ViewListener;)Lcn/mucang/sundial/library/widget/BlankDialog$Builder;

    return-void
.end method

.method public static final synthetic access$getUpgradeCountDownTimer$p(Lcn/mucang/sundial/library/widget/UpgradeConfirmDialog$Builder;)Landroid/os/CountDownTimer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/sundial/library/widget/UpgradeConfirmDialog$Builder;->upgradeCountDownTimer:Landroid/os/CountDownTimer;

    return-object p0
.end method

.method public static final synthetic access$setUpgradeCountDownTimer$p(Lcn/mucang/sundial/library/widget/UpgradeConfirmDialog$Builder;Landroid/os/CountDownTimer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/sundial/library/widget/UpgradeConfirmDialog$Builder;->upgradeCountDownTimer:Landroid/os/CountDownTimer;

    return-void
.end method

.method private final startCountDownUpload(ILcn/mucang/sundial/library/databinding/TtDialogUpgradeComfirmBinding;)V
    .locals 8

    .line 1
    new-instance v7, Lcn/mucang/sundial/library/widget/UpgradeConfirmDialog$Builder$startCountDownUpload$1;

    mul-int/lit16 v0, p1, 0x3e8

    add-int/lit8 v0, v0, 0x64

    int-to-long v3, v0

    const-wide/16 v5, 0x3e8

    move-object v0, v7

    move-object v1, p2

    move v2, p1

    invoke-direct/range {v0 .. v6}, Lcn/mucang/sundial/library/widget/UpgradeConfirmDialog$Builder$startCountDownUpload$1;-><init>(Lcn/mucang/sundial/library/databinding/TtDialogUpgradeComfirmBinding;IJJ)V

    .line 2
    invoke-virtual {v7}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    move-result-object p1

    iput-object p1, p0, Lcn/mucang/sundial/library/widget/UpgradeConfirmDialog$Builder;->upgradeCountDownTimer:Landroid/os/CountDownTimer;

    return-void
.end method


# virtual methods
.method public final getDialog()Lcn/mucang/sundial/library/widget/BlankDialog;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/library/widget/UpgradeConfirmDialog$Builder;->dialog:Lcn/mucang/sundial/library/widget/BlankDialog;

    return-object v0
.end method

.method public final setContent(Ljava/lang/String;Lcn/mucang/sundial/library/widget/DialogCallBack;)Lcn/mucang/sundial/library/widget/UpgradeConfirmDialog$Builder;
    .locals 3

    const-string v0, "content"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcn/mucang/sundial/library/widget/BlankDialog$Builder;->getParams()Lcn/mucang/sundial/library/widget/BlankDialog$Params;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/sundial/library/widget/BlankDialog$Params;->getCustomViewBinding()Landroidx/viewbinding/a;

    move-result-object v0

    instance-of v1, v0, Lcn/mucang/sundial/library/databinding/TtDialogUpgradeComfirmBinding;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    check-cast v0, Lcn/mucang/sundial/library/databinding/TtDialogUpgradeComfirmBinding;

    if-eqz v0, :cond_1

    .line 2
    iget-object v1, v0, Lcn/mucang/sundial/library/databinding/TtDialogUpgradeComfirmBinding;->title:Landroid/widget/TextView;

    const-string v2, "title"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v1, 0xa

    .line 3
    invoke-direct {p0, v1, v0}, Lcn/mucang/sundial/library/widget/UpgradeConfirmDialog$Builder;->startCountDownUpload(ILcn/mucang/sundial/library/databinding/TtDialogUpgradeComfirmBinding;)V

    .line 4
    iget-object v1, v0, Lcn/mucang/sundial/library/databinding/TtDialogUpgradeComfirmBinding;->ok:Landroid/widget/TextView;

    new-instance v2, Lcn/mucang/sundial/library/widget/UpgradeConfirmDialog$Builder$setContent$$inlined$apply$lambda$1;

    invoke-direct {v2, p0, v0, p1, p2}, Lcn/mucang/sundial/library/widget/UpgradeConfirmDialog$Builder$setContent$$inlined$apply$lambda$1;-><init>(Lcn/mucang/sundial/library/widget/UpgradeConfirmDialog$Builder;Lcn/mucang/sundial/library/databinding/TtDialogUpgradeComfirmBinding;Ljava/lang/String;Lcn/mucang/sundial/library/widget/DialogCallBack;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-object p0
.end method

.method public final setDialog(Lcn/mucang/sundial/library/widget/BlankDialog;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/sundial/library/widget/UpgradeConfirmDialog$Builder;->dialog:Lcn/mucang/sundial/library/widget/BlankDialog;

    return-void
.end method
