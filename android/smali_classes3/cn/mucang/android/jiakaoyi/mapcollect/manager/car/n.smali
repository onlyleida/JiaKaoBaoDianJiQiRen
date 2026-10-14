.class public final Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/n;
.super Landroidx/fragment/app/c;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0010\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\r\u001a\u00020\u00072\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0016J$\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00132\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u00152\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0016J\u0008\u0010\u0016\u001a\u00020\u0007H\u0016J\u001a\u0010\u0017\u001a\u00020\u00072\u0006\u0010\u0018\u001a\u00020\u00112\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0016R.\u0010\u0003\u001a\u0016\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000bR\u0010\u0010\u000c\u001a\u0004\u0018\u00010\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/ConfirmCarCodeDialog;",
        "Landroidx/fragment/app/DialogFragment;",
        "()V",
        "onCorrect",
        "Lkotlin/Function2;",
        "Lcn/mucang/android/jiakaoyi/signal/car/LocalCarModel;",
        "",
        "",
        "getOnCorrect",
        "()Lkotlin/jvm/functions/Function2;",
        "setOnCorrect",
        "(Lkotlin/jvm/functions/Function2;)V",
        "selectedCarModel",
        "onCreate",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onCreateView",
        "Landroid/view/View;",
        "inflater",
        "Landroid/view/LayoutInflater;",
        "container",
        "Landroid/view/ViewGroup;",
        "onStart",
        "onViewCreated",
        "view",
        "mapcollect_release"
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
.field private a:Lkotlin/jvm/b/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/b/p<",
            "-",
            "Lcn/mucang/android/jiakaoyi/signal/car/LocalCarModel;",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/v;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcn/mucang/android/jiakaoyi/signal/car/LocalCarModel;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/c;-><init>()V

    return-void
.end method

.method private static final A(Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/n;Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ConfirmCarCodeDialogBinding;Lcn/mucang/android/jiakaoyi/signal/car/LocalCarModel;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$mBinding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p2, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/n;->b:Lcn/mucang/android/jiakaoyi/signal/car/LocalCarModel;

    .line 2
    iget-object p0, p1, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ConfirmCarCodeDialogBinding;->carCode:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/signal/car/LocalCarModel;->getCarDesc()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method private static final B(Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/n;Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ConfirmCarCodeDialogBinding;Landroid/view/View;)V
    .locals 1

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$mBinding"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/n;->b:Lcn/mucang/android/jiakaoyi/signal/car/LocalCarModel;

    if-nez p2, :cond_0

    const-string p0, "\u8bf7\u5148\u9009\u62e9\u8f66\u578b!"

    .line 2
    invoke-static {p0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    goto :goto_1

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/n;->r()Lkotlin/jvm/b/p;

    move-result-object p2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/n;->b:Lcn/mucang/android/jiakaoyi/signal/car/LocalCarModel;

    invoke-static {v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ConfirmCarCodeDialogBinding;->carCodeDesc:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Lkotlin/jvm/b/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/c;->dismiss()V

    :goto_1
    return-void
.end method

.method public static synthetic s(Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/n;Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ConfirmCarCodeDialogBinding;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/n;->z(Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/n;Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ConfirmCarCodeDialogBinding;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic t(Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/n;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/n;->x(Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/n;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic u(Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/n;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/n;->y(Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/n;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic v(Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/n;Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ConfirmCarCodeDialogBinding;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/n;->B(Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/n;Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ConfirmCarCodeDialogBinding;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic w(Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/n;Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ConfirmCarCodeDialogBinding;Lcn/mucang/android/jiakaoyi/signal/car/LocalCarModel;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/n;->A(Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/n;Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ConfirmCarCodeDialogBinding;Lcn/mucang/android/jiakaoyi/signal/car/LocalCarModel;)V

    return-void
.end method

.method private static final x(Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/n;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/c;->dismissAllowingStateLoss()V

    return-void
.end method

.method private static final y(Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/n;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/c;->dismissAllowingStateLoss()V

    return-void
.end method

.method private static final z(Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/n;Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ConfirmCarCodeDialogBinding;Landroid/view/View;)V
    .locals 2

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$mBinding"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object p2, Lcn/mucang/jiakaoyi/uilib/ui/setting/car/RealCarSelectActivity;->f:Lcn/mucang/jiakaoyi/uilib/ui/setting/car/RealCarSelectActivity$a;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/d;

    move-result-object v0

    const-string v1, "requireActivity()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/m;

    invoke-direct {v1, p0, p1}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/m;-><init>(Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/n;Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ConfirmCarCodeDialogBinding;)V

    invoke-virtual {p2, v0, v1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/car/RealCarSelectActivity$a;->b(Landroid/app/Activity;Lcn/mucang/android/jiakaoyi/framework/h/b;)V

    return-void
.end method


# virtual methods
.method public final C(Lkotlin/jvm/b/p;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/b/p<",
            "-",
            "Lcn/mucang/android/jiakaoyi/signal/car/LocalCarModel;",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/v;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/n;->a:Lkotlin/jvm/b/p;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/c;->onCreate(Landroid/os/Bundle;)V

    .line 2
    sget p1, Lcn/mucang/android/jiakaoyi/mapcollect/R$style;->jiakaoyi_confim_car_code_dialog:I

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Landroidx/fragment/app/c;->setStyle(II)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p2, "inflater"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ConfirmCarCodeDialogBinding;->inflate(Landroid/view/LayoutInflater;)Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ConfirmCarCodeDialogBinding;

    move-result-object p1

    const-string p2, "inflate(inflater)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/car/c;->b()Lcn/mucang/android/jiakaoyi/signal/car/LocalCarModel;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/signal/car/LocalCarModel;->getCarDesc()Ljava/lang/String;

    move-result-object p3

    .line 4
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ConfirmCarCodeDialogBinding;->carCode:Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/n;->b:Lcn/mucang/android/jiakaoyi/signal/car/LocalCarModel;

    .line 6
    :cond_0
    iget-object p2, p1, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ConfirmCarCodeDialogBinding;->closeIv:Landroid/widget/ImageView;

    new-instance p3, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/j;

    invoke-direct {p3, p0}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/j;-><init>(Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/n;)V

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    iget-object p2, p1, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ConfirmCarCodeDialogBinding;->cancelTv:Landroid/widget/TextView;

    new-instance p3, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/k;

    invoke-direct {p3, p0}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/k;-><init>(Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/n;)V

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    iget-object p2, p1, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ConfirmCarCodeDialogBinding;->carCode:Landroid/widget/TextView;

    new-instance p3, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/i;

    invoke-direct {p3, p0, p1}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/i;-><init>(Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/n;Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ConfirmCarCodeDialogBinding;)V

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    iget-object p2, p1, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ConfirmCarCodeDialogBinding;->confirmTv:Landroid/widget/TextView;

    new-instance p3, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/l;

    invoke-direct {p3, p0, p1}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/l;-><init>(Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/n;Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ConfirmCarCodeDialogBinding;)V

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ConfirmCarCodeDialogBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    const-string p2, "mBinding.root"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public onStart()V
    .locals 3

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

    const/4 v2, -0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setLayout(II)V

    .line 3
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/c;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/DialogExtensionKt;->c(Landroid/app/Dialog;)V

    .line 4
    :goto_1
    invoke-virtual {p0}, Landroidx/fragment/app/c;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-nez v0, :cond_4

    goto :goto_2

    :cond_4
    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 5
    :goto_2
    invoke-virtual {p0}, Landroidx/fragment/app/c;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-nez v0, :cond_5

    goto :goto_3

    :cond_5
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    :goto_3
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    const-string p2, "view"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final r()Lkotlin/jvm/b/p;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/b/p<",
            "Lcn/mucang/android/jiakaoyi/signal/car/LocalCarModel;",
            "Ljava/lang/String;",
            "Lkotlin/v;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/n;->a:Lkotlin/jvm/b/p;

    return-object v0
.end method
