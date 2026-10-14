.class public Lcn/mucang/android/account/ui/LoginSmsDialogView;
.super Lcn/mucang/android/account/ui/b;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcn/mucang/android/account/ui/b;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private a()V
    .locals 1

    .line 1
    sget v0, Lcn/mucang/android/framework/account/R$id;->username_input:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcn/mucang/android/account/ui/b;->b:Landroid/widget/EditText;

    .line 2
    sget v0, Lcn/mucang/android/framework/account/R$id;->code_input:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcn/mucang/android/account/ui/b;->c:Landroid/widget/EditText;

    .line 3
    sget v0, Lcn/mucang/android/framework/account/R$id;->btn_resend_input:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcn/mucang/android/account/ui/b;->a:Landroid/widget/Button;

    .line 4
    sget v0, Lcn/mucang/android/framework/account/R$id;->btn_ok:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcn/mucang/android/account/ui/b;->d:Landroid/widget/Button;

    return-void
.end method


# virtual methods
.method public getCodeInput()Landroid/widget/EditText;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/account/ui/b;->c:Landroid/widget/EditText;

    return-object v0
.end method

.method public getOkBtn()Landroid/widget/Button;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/account/ui/b;->d:Landroid/widget/Button;

    return-object v0
.end method

.method public getResendInput()Landroid/widget/Button;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/account/ui/b;->a:Landroid/widget/Button;

    return-object v0
.end method

.method public getUsernameInput()Landroid/widget/EditText;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/account/ui/b;->b:Landroid/widget/EditText;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 0

    return-object p0
.end method

.method protected onFinishInflate()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 2
    invoke-direct {p0}, Lcn/mucang/android/account/ui/LoginSmsDialogView;->a()V

    return-void
.end method
