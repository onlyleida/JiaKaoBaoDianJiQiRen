.class public final Lcn/mucang/jiakaoyi/uilib/ui/dialog/n0;
.super Landroidx/fragment/app/c;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0010\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\u000b\u001a\u00020\u00062\u0008\u0010\u000c\u001a\u0004\u0018\u00010\rH\u0016J&\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u00132\u0008\u0010\u000c\u001a\u0004\u0018\u00010\rH\u0016J\u0008\u0010\u0014\u001a\u00020\u0006H\u0016R(\u0010\u0003\u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\n\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcn/mucang/jiakaoyi/uilib/ui/dialog/ShareDialog;",
        "Landroidx/fragment/app/DialogFragment;",
        "()V",
        "onConfirm",
        "Lkotlin/Function1;",
        "",
        "",
        "getOnConfirm",
        "()Lkotlin/jvm/functions/Function1;",
        "setOnConfirm",
        "(Lkotlin/jvm/functions/Function1;)V",
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
.field private a:Lkotlin/jvm/b/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/b/l<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/v;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/c;-><init>()V

    return-void
.end method

.method public static synthetic s(Lcom/mucang/android/jiakaoyi/uilib/databinding/ShareDialogBinding;Lcn/mucang/jiakaoyi/uilib/ui/dialog/n0;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcn/mucang/jiakaoyi/uilib/ui/dialog/n0;->v(Lcom/mucang/android/jiakaoyi/uilib/databinding/ShareDialogBinding;Lcn/mucang/jiakaoyi/uilib/ui/dialog/n0;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic t(Lcn/mucang/jiakaoyi/uilib/ui/dialog/n0;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/jiakaoyi/uilib/ui/dialog/n0;->u(Lcn/mucang/jiakaoyi/uilib/ui/dialog/n0;Landroid/view/View;)V

    return-void
.end method

.method private static final u(Lcn/mucang/jiakaoyi/uilib/ui/dialog/n0;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/c;->dismissAllowingStateLoss()V

    return-void
.end method

.method private static final v(Lcom/mucang/android/jiakaoyi/uilib/databinding/ShareDialogBinding;Lcn/mucang/jiakaoyi/uilib/ui/dialog/n0;Landroid/view/View;)V
    .locals 0

    const-string p2, "$viewBinding"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "this$0"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p0, p0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ShareDialogBinding;->phoneEt:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    .line 2
    invoke-static {p0}, Lcn/mucang/jiakaoyi/uilib/s/n;->a(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 3
    invoke-static {}, Lcn/mucang/android/core/utils/x;->e()Z

    move-result p2

    if-nez p2, :cond_0

    const-string p0, "\u5f53\u524d\u8bbe\u5907\u672a\u8054\u7f51"

    .line 4
    invoke-static {p0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    return-void

    .line 5
    :cond_0
    invoke-virtual {p1}, Lcn/mucang/jiakaoyi/uilib/ui/dialog/n0;->r()Lkotlin/jvm/b/l;

    move-result-object p2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {p2, p0}, Lkotlin/jvm/b/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    :goto_0
    invoke-virtual {p1}, Landroidx/fragment/app/c;->dismissAllowingStateLoss()V

    goto :goto_1

    :cond_2
    const-string p0, "\u8bf7\u8f93\u5165\u6b63\u786e\u624b\u673a\u53f7"

    .line 7
    invoke-static {p0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    :goto_1
    return-void
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
    .locals 0

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p3, 0x0

    .line 1
    invoke-static {p1, p2, p3}, Lcom/mucang/android/jiakaoyi/uilib/databinding/ShareDialogBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/mucang/android/jiakaoyi/uilib/databinding/ShareDialogBinding;

    move-result-object p1

    const-string p2, "inflate(inflater, container, false)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p2, p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/ShareDialogBinding;->closeIv:Landroid/widget/ImageView;

    new-instance p3, Lcn/mucang/jiakaoyi/uilib/ui/dialog/x;

    invoke-direct {p3, p0}, Lcn/mucang/jiakaoyi/uilib/ui/dialog/x;-><init>(Lcn/mucang/jiakaoyi/uilib/ui/dialog/n0;)V

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3
    iget-object p2, p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/ShareDialogBinding;->okTv:Landroid/widget/TextView;

    new-instance p3, Lcn/mucang/jiakaoyi/uilib/ui/dialog/w;

    invoke-direct {p3, p1, p0}, Lcn/mucang/jiakaoyi/uilib/ui/dialog/w;-><init>(Lcom/mucang/android/jiakaoyi/uilib/databinding/ShareDialogBinding;Lcn/mucang/jiakaoyi/uilib/ui/dialog/n0;)V

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    invoke-virtual {p1}, Lcom/mucang/android/jiakaoyi/uilib/databinding/ShareDialogBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object p1

    return-object p1
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

.method public final r()Lkotlin/jvm/b/l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/b/l<",
            "Ljava/lang/String;",
            "Lkotlin/v;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/dialog/n0;->a:Lkotlin/jvm/b/l;

    return-object v0
.end method

.method public final w(Lkotlin/jvm/b/l;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/b/l<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/v;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/dialog/n0;->a:Lkotlin/jvm/b/l;

    return-void
.end method
