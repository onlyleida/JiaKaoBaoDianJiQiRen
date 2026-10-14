.class public final Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/p;
.super Lcn/mucang/android/jiakaoyi/k3setting/d/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/jiakaoyi/k3setting/d/a<",
        "Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutLoginCardBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u0005\u001a\u00020\u0006H\u0016J\u0008\u0010\u0007\u001a\u00020\u0006H\u0002J\u0010\u0010\u0008\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\nH\u0016\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/CardLoginLogic;",
        "Lcn/mucang/android/jiakaoyi/k3setting/login/BaseLogic;",
        "Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutLoginCardBinding;",
        "binding",
        "(Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutLoginCardBinding;)V",
        "init",
        "",
        "login",
        "start",
        "fromUser",
        "",
        "teachbase_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutLoginCardBinding;)V
    .locals 1

    const-string v0, "binding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/k3setting/d/a;-><init>(Landroidx/viewbinding/a;)V

    return-void
.end method

.method private static final k(Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/p;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/p;->p()V

    return-void
.end method

.method private static final l(Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/p;Landroid/view/View;)V
    .locals 1

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3setting/d/a;->d()Landroidx/viewbinding/a;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutLoginCardBinding;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutLoginCardBinding;->eyeIv:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3setting/d/a;->d()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutLoginCardBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutLoginCardBinding;->eyeIv:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->isSelected()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 2
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3setting/d/a;->d()Landroidx/viewbinding/a;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutLoginCardBinding;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutLoginCardBinding;->eyeIv:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->isSelected()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3setting/d/a;->d()Landroidx/viewbinding/a;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutLoginCardBinding;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutLoginCardBinding;->idEt:Landroid/widget/EditText;

    const/16 v0, 0x91

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setInputType(I)V

    .line 4
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3setting/d/a;->d()Landroidx/viewbinding/a;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutLoginCardBinding;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutLoginCardBinding;->idEt:Landroid/widget/EditText;

    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3setting/d/a;->d()Landroidx/viewbinding/a;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutLoginCardBinding;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutLoginCardBinding;->idEt:Landroid/widget/EditText;

    const/16 v0, 0x81

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setInputType(I)V

    .line 6
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3setting/d/a;->d()Landroidx/viewbinding/a;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutLoginCardBinding;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutLoginCardBinding;->idEt:Landroid/widget/EditText;

    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 7
    :goto_0
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3setting/d/a;->d()Landroidx/viewbinding/a;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutLoginCardBinding;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutLoginCardBinding;->idEt:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3setting/d/a;->d()Landroidx/viewbinding/a;

    move-result-object p0

    check-cast p0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutLoginCardBinding;

    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutLoginCardBinding;->idEt:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/EditText;->setSelection(I)V

    return-void
.end method

.method public static synthetic m(Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/p;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/p;->k(Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/p;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic n(Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/p;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/p;->l(Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/p;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic o(Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/p;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/p;->q(Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/p;Ljava/lang/String;)V

    return-void
.end method

.method private final p()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3setting/d/a;->d()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutLoginCardBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutLoginCardBinding;->idEt:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3setting/d/a;->d()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutLoginCardBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutLoginCardBinding;->tvErrTip:Landroid/widget/TextView;

    sget v1, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_enter_account:I

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    return-void

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3setting/d/a;->d()Landroidx/viewbinding/a;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutLoginCardBinding;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutLoginCardBinding;->tvErrTip:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3setting/d/a;->c()Landroidx/fragment/app/d;

    move-result-object v1

    .line 7
    sget-object v2, Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;->MOBILE_OR_IDCARD:Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;

    .line 8
    new-instance v3, Lcn/mucang/jiakaoyi/uilib/login/model/AnyLoginData;

    invoke-direct {v3, v0}, Lcn/mucang/jiakaoyi/uilib/login/model/AnyLoginData;-><init>(Ljava/lang/String;)V

    .line 9
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/c;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/c;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/p;)V

    invoke-static {v1, v2, v3, v0}, Lcn/mucang/jiakaoyi/uilib/login/LoginManager;->i(Landroid/app/Activity;Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;Lcn/mucang/jiakaoyi/uilib/login/model/LoginData;Lcn/mucang/android/jiakaoyi/framework/h/b;)V

    return-void
.end method

.method private static final q(Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/p;Ljava/lang/String;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3setting/d/a;->d()Landroidx/viewbinding/a;

    move-result-object p0

    check-cast p0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutLoginCardBinding;

    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutLoginCardBinding;->tvErrTip:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public f()V
    .locals 3

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/f0;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3setting/d/a;->d()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutLoginCardBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutLoginCardBinding;->loginTv:Landroid/widget/TextView;

    sget v1, Lcn/mucang/android/jiakaoyi/teachbase/R$drawable;->bg_login_btn_ug:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 3
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3setting/d/a;->d()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutLoginCardBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutLoginCardBinding;->llAccount:Landroid/widget/LinearLayout;

    sget v1, Lcn/mucang/android/jiakaoyi/teachbase/R$drawable;->bg_login_account_edit_ug:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3setting/d/a;->d()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutLoginCardBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutLoginCardBinding;->numKeyboard:Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/widget/NumKeyBoardView;

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3setting/d/a;->d()Landroidx/viewbinding/a;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutLoginCardBinding;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutLoginCardBinding;->idEt:Landroid/widget/EditText;

    const-string v2, "binding.idEt"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/widget/NumKeyBoardView;->bindEditText(Landroid/widget/EditText;)V

    .line 5
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3setting/d/a;->d()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutLoginCardBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutLoginCardBinding;->loginTv:Landroid/widget/TextView;

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/a;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/a;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/p;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3setting/d/a;->d()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutLoginCardBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutLoginCardBinding;->eyeIv:Landroid/widget/ImageView;

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/b;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/b;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/p;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public h(Z)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcn/mucang/android/jiakaoyi/k3setting/d/a;->h(Z)V

    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3setting/d/a;->d()Landroidx/viewbinding/a;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutLoginCardBinding;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutLoginCardBinding;->idEt:Landroid/widget/EditText;

    const-string v0, "binding.idEt"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->isLayoutRequested()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3setting/d/a;->d()Landroidx/viewbinding/a;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutLoginCardBinding;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutLoginCardBinding;->idEt:Landroid/widget/EditText;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 5
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3setting/d/a;->d()Landroidx/viewbinding/a;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutLoginCardBinding;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutLoginCardBinding;->idEt:Landroid/widget/EditText;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 6
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3setting/d/a;->d()Landroidx/viewbinding/a;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutLoginCardBinding;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutLoginCardBinding;->idEt:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->findFocus()Landroid/view/View;

    .line 7
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3setting/d/a;->d()Landroidx/viewbinding/a;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutLoginCardBinding;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutLoginCardBinding;->idEt:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0

    .line 8
    :cond_0
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/p$a;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/p$a;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/p;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_1
    :goto_0
    return-void
.end method
