.class public Lcn/mucang/android/account/ui/LoginSmsCommonView;
.super Lcn/mucang/android/account/ui/b;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/ui/framework/mvp/b;


# instance fields
.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field protected g:Landroid/widget/CheckBox;

.field private h:Landroid/view/View;


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

    .line 5
    sget v0, Lcn/mucang/android/framework/account/R$id;->btn_send_voice_code:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/mucang/android/account/ui/LoginSmsCommonView;->e:Landroid/widget/TextView;

    .line 6
    sget v0, Lcn/mucang/android/framework/account/R$id;->tv_protocol:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/mucang/android/account/ui/LoginSmsCommonView;->f:Landroid/widget/TextView;

    .line 7
    sget v0, Lcn/mucang/android/framework/account/R$id;->check_box:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcn/mucang/android/account/ui/LoginSmsCommonView;->g:Landroid/widget/CheckBox;

    .line 8
    sget v0, Lcn/mucang/android/framework/account/R$id;->account__protocol_in:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/account/ui/LoginSmsCommonView;->h:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public getBtnSendSmsCode()Landroid/widget/TextView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/account/ui/LoginSmsCommonView;->e:Landroid/widget/TextView;

    return-object v0
.end method

.method public getCheckBox()Landroid/widget/CheckBox;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/account/ui/LoginSmsCommonView;->g:Landroid/widget/CheckBox;

    return-object v0
.end method

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

.method public getProtocolIn()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/account/ui/LoginSmsCommonView;->h:Landroid/view/View;

    return-object v0
.end method

.method public getProtocolTv()Landroid/widget/TextView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/account/ui/LoginSmsCommonView;->f:Landroid/widget/TextView;

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
    invoke-direct {p0}, Lcn/mucang/android/account/ui/LoginSmsCommonView;->a()V

    return-void
.end method

.method public setBtnSendSmsCode(Landroid/widget/TextView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/account/ui/LoginSmsCommonView;->e:Landroid/widget/TextView;

    return-void
.end method
