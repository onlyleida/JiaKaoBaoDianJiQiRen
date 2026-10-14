.class public final Lcn/mucang/jiakaoyi/uilib/deduct/dialog/o;
.super Landroidx/fragment/app/c;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u0000 \u00142\u00020\u0001:\u0001\u0014B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\u0007\u001a\u00020\u00082\u0008\u0010\t\u001a\u0004\u0018\u00010\nH\u0016J$\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000e2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u00102\u0008\u0010\t\u001a\u0004\u0018\u00010\nH\u0016J\u0008\u0010\u0011\u001a\u00020\u0008H\u0016J\u000e\u0010\u0012\u001a\u00020\u00082\u0006\u0010\u0013\u001a\u00020\u0006R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082.\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcn/mucang/jiakaoyi/uilib/deduct/dialog/DeductDescDialog;",
        "Landroidx/fragment/app/DialogFragment;",
        "()V",
        "mBinding",
        "Lcom/mucang/android/jiakaoyi/uilib/databinding/DialogDeductDescBinding;",
        "mEditListener",
        "Lcn/mucang/jiakaoyi/uilib/deduct/DeductItemBinder$DeductDescEditListener;",
        "onCreate",
        "",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onCreateView",
        "Landroid/view/View;",
        "inflater",
        "Landroid/view/LayoutInflater;",
        "container",
        "Landroid/view/ViewGroup;",
        "onStart",
        "setEditListener",
        "listener",
        "Companion",
        "uilib_release"
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
.field private a:Lcom/mucang/android/jiakaoyi/uilib/databinding/DialogDeductDescBinding;

.field private b:Lcn/mucang/jiakaoyi/uilib/deduct/z$a;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/c;-><init>()V

    return-void
.end method

.method public static synthetic r(Lcn/mucang/jiakaoyi/uilib/deduct/dialog/o;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/jiakaoyi/uilib/deduct/dialog/o;->t(Lcn/mucang/jiakaoyi/uilib/deduct/dialog/o;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic s(Lcn/mucang/jiakaoyi/uilib/deduct/dialog/o;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/jiakaoyi/uilib/deduct/dialog/o;->u(Lcn/mucang/jiakaoyi/uilib/deduct/dialog/o;Landroid/view/View;)V

    return-void
.end method

.method private static final t(Lcn/mucang/jiakaoyi/uilib/deduct/dialog/o;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/c;->dismissAllowingStateLoss()V

    return-void
.end method

.method private static final u(Lcn/mucang/jiakaoyi/uilib/deduct/dialog/o;Landroid/view/View;)V
    .locals 4

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/deduct/dialog/o;->a:Lcom/mucang/android/jiakaoyi/uilib/databinding/DialogDeductDescBinding;

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    iget-object p1, p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/DialogDeductDescBinding;->etDesc:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v2, 0x2

    const-string v3, "%_%"

    .line 2
    invoke-static {p1, v3, v1, v2, v0}, Lkotlin/text/l;->G(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "\u8f93\u5165\u4e0d\u5408\u6cd5"

    .line 3
    invoke-static {p0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/deduct/dialog/o;->b:Lcn/mucang/jiakaoyi/uilib/deduct/z$a;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v0, p1}, Lcn/mucang/jiakaoyi/uilib/deduct/z$a;->a(Ljava/lang/String;)V

    .line 5
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/c;->dismissAllowingStateLoss()V

    return-void

    :cond_2
    const-string p0, "mBinding"

    .line 6
    invoke-static {p0}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/c;->onCreate(Landroid/os/Bundle;)V

    .line 2
    sget p1, Lcom/mucang/android/jiakaoyi/uilib/R$style;->jiakaoyi_dialog_fragment:I

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Landroidx/fragment/app/c;->setStyle(II)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p2, "inflater"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1}, Lcom/mucang/android/jiakaoyi/uilib/databinding/DialogDeductDescBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/mucang/android/jiakaoyi/uilib/databinding/DialogDeductDescBinding;

    move-result-object p1

    const-string p2, "inflate(inflater)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/deduct/dialog/o;->a:Lcom/mucang/android/jiakaoyi/uilib/databinding/DialogDeductDescBinding;

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const/4 p2, 0x0

    if-nez p1, :cond_0

    move-object p1, p2

    goto :goto_0

    :cond_0
    const-string p3, "deduct_desc"

    invoke-virtual {p1, p3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    :goto_0
    iget-object p3, p0, Lcn/mucang/jiakaoyi/uilib/deduct/dialog/o;->a:Lcom/mucang/android/jiakaoyi/uilib/databinding/DialogDeductDescBinding;

    const-string v0, "mBinding"

    if-eqz p3, :cond_4

    iget-object p3, p3, Lcom/mucang/android/jiakaoyi/uilib/databinding/DialogDeductDescBinding;->etDesc:Landroid/widget/EditText;

    invoke-virtual {p3, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/deduct/dialog/o;->a:Lcom/mucang/android/jiakaoyi/uilib/databinding/DialogDeductDescBinding;

    if-eqz p1, :cond_3

    iget-object p1, p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/DialogDeductDescBinding;->closeIv:Landroid/widget/ImageView;

    new-instance p3, Lcn/mucang/jiakaoyi/uilib/deduct/dialog/a;

    invoke-direct {p3, p0}, Lcn/mucang/jiakaoyi/uilib/deduct/dialog/a;-><init>(Lcn/mucang/jiakaoyi/uilib/deduct/dialog/o;)V

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/deduct/dialog/o;->a:Lcom/mucang/android/jiakaoyi/uilib/databinding/DialogDeductDescBinding;

    if-eqz p1, :cond_2

    iget-object p1, p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/DialogDeductDescBinding;->saveTv:Landroid/widget/TextView;

    new-instance p3, Lcn/mucang/jiakaoyi/uilib/deduct/dialog/b;

    invoke-direct {p3, p0}, Lcn/mucang/jiakaoyi/uilib/deduct/dialog/b;-><init>(Lcn/mucang/jiakaoyi/uilib/deduct/dialog/o;)V

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/deduct/dialog/o;->a:Lcom/mucang/android/jiakaoyi/uilib/databinding/DialogDeductDescBinding;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/mucang/android/jiakaoyi/uilib/databinding/DialogDeductDescBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    const-string p2, "mBinding.root"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    :cond_1
    invoke-static {v0}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw p2

    .line 7
    :cond_2
    invoke-static {v0}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw p2

    .line 8
    :cond_3
    invoke-static {v0}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw p2

    .line 9
    :cond_4
    invoke-static {v0}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw p2
.end method

.method public onStart()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/c;->onStart()V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/c;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setLayout(II)V

    .line 3
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/c;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 4
    :goto_1
    invoke-virtual {p0}, Landroidx/fragment/app/c;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-nez v0, :cond_4

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    :goto_2
    return-void
.end method

.method public final v(Lcn/mucang/jiakaoyi/uilib/deduct/z$a;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/deduct/dialog/o;->b:Lcn/mucang/jiakaoyi/uilib/deduct/z$a;

    return-void
.end method
