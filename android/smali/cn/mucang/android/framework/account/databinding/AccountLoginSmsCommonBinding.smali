.class public final Lcn/mucang/android/framework/account/databinding/AccountLoginSmsCommonBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/a;


# instance fields
.field public final accountProtocolIn:Lcn/mucang/android/framework/account/databinding/AccountIncludeProtocolBinding;

.field public final btnOk:Landroid/widget/Button;

.field public final btnResendInput:Landroid/widget/Button;

.field public final codeDividerLine:Landroid/view/View;

.field public final codeInput:Landroid/widget/EditText;

.field public final ivPhoneCode:Landroid/widget/ImageView;

.field public final ivPhoneNumber:Landroid/widget/ImageView;

.field private final rootView:Lcn/mucang/android/account/ui/LoginSmsCommonView;

.field public final smsCommon:Lcn/mucang/android/account/ui/LoginSmsCommonView;

.field public final usernameInput:Landroid/widget/EditText;


# direct methods
.method private constructor <init>(Lcn/mucang/android/account/ui/LoginSmsCommonView;Lcn/mucang/android/framework/account/databinding/AccountIncludeProtocolBinding;Landroid/widget/Button;Landroid/widget/Button;Landroid/view/View;Landroid/widget/EditText;Landroid/widget/ImageView;Landroid/widget/ImageView;Lcn/mucang/android/account/ui/LoginSmsCommonView;Landroid/widget/EditText;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcn/mucang/android/framework/account/databinding/AccountLoginSmsCommonBinding;->rootView:Lcn/mucang/android/account/ui/LoginSmsCommonView;

    .line 3
    iput-object p2, p0, Lcn/mucang/android/framework/account/databinding/AccountLoginSmsCommonBinding;->accountProtocolIn:Lcn/mucang/android/framework/account/databinding/AccountIncludeProtocolBinding;

    .line 4
    iput-object p3, p0, Lcn/mucang/android/framework/account/databinding/AccountLoginSmsCommonBinding;->btnOk:Landroid/widget/Button;

    .line 5
    iput-object p4, p0, Lcn/mucang/android/framework/account/databinding/AccountLoginSmsCommonBinding;->btnResendInput:Landroid/widget/Button;

    .line 6
    iput-object p5, p0, Lcn/mucang/android/framework/account/databinding/AccountLoginSmsCommonBinding;->codeDividerLine:Landroid/view/View;

    .line 7
    iput-object p6, p0, Lcn/mucang/android/framework/account/databinding/AccountLoginSmsCommonBinding;->codeInput:Landroid/widget/EditText;

    .line 8
    iput-object p7, p0, Lcn/mucang/android/framework/account/databinding/AccountLoginSmsCommonBinding;->ivPhoneCode:Landroid/widget/ImageView;

    .line 9
    iput-object p8, p0, Lcn/mucang/android/framework/account/databinding/AccountLoginSmsCommonBinding;->ivPhoneNumber:Landroid/widget/ImageView;

    .line 10
    iput-object p9, p0, Lcn/mucang/android/framework/account/databinding/AccountLoginSmsCommonBinding;->smsCommon:Lcn/mucang/android/account/ui/LoginSmsCommonView;

    .line 11
    iput-object p10, p0, Lcn/mucang/android/framework/account/databinding/AccountLoginSmsCommonBinding;->usernameInput:Landroid/widget/EditText;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcn/mucang/android/framework/account/databinding/AccountLoginSmsCommonBinding;
    .locals 13

    .line 1
    sget v0, Lcn/mucang/android/framework/account/R$id;->account__protocol_in:I

    .line 2
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    invoke-static {v1}, Lcn/mucang/android/framework/account/databinding/AccountIncludeProtocolBinding;->bind(Landroid/view/View;)Lcn/mucang/android/framework/account/databinding/AccountIncludeProtocolBinding;

    move-result-object v4

    .line 4
    sget v0, Lcn/mucang/android/framework/account/R$id;->btn_ok:I

    .line 5
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/Button;

    if-eqz v5, :cond_0

    .line 6
    sget v0, Lcn/mucang/android/framework/account/R$id;->btn_resend_input:I

    .line 7
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/Button;

    if-eqz v6, :cond_0

    .line 8
    sget v0, Lcn/mucang/android/framework/account/R$id;->code_divider_line:I

    .line 9
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 10
    sget v0, Lcn/mucang/android/framework/account/R$id;->code_input:I

    .line 11
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/EditText;

    if-eqz v8, :cond_0

    .line 12
    sget v0, Lcn/mucang/android/framework/account/R$id;->iv_phone_code:I

    .line 13
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/ImageView;

    if-eqz v9, :cond_0

    .line 14
    sget v0, Lcn/mucang/android/framework/account/R$id;->iv_phone_number:I

    .line 15
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/widget/ImageView;

    if-eqz v10, :cond_0

    .line 16
    move-object v11, p0

    check-cast v11, Lcn/mucang/android/account/ui/LoginSmsCommonView;

    .line 17
    sget v0, Lcn/mucang/android/framework/account/R$id;->username_input:I

    .line 18
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Landroid/widget/EditText;

    if-eqz v12, :cond_0

    .line 19
    new-instance p0, Lcn/mucang/android/framework/account/databinding/AccountLoginSmsCommonBinding;

    move-object v2, p0

    move-object v3, v11

    invoke-direct/range {v2 .. v12}, Lcn/mucang/android/framework/account/databinding/AccountLoginSmsCommonBinding;-><init>(Lcn/mucang/android/account/ui/LoginSmsCommonView;Lcn/mucang/android/framework/account/databinding/AccountIncludeProtocolBinding;Landroid/widget/Button;Landroid/widget/Button;Landroid/view/View;Landroid/widget/EditText;Landroid/widget/ImageView;Landroid/widget/ImageView;Lcn/mucang/android/account/ui/LoginSmsCommonView;Landroid/widget/EditText;)V

    return-object p0

    .line 20
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 21
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcn/mucang/android/framework/account/databinding/AccountLoginSmsCommonBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-static {p0, v0, v1}, Lcn/mucang/android/framework/account/databinding/AccountLoginSmsCommonBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcn/mucang/android/framework/account/databinding/AccountLoginSmsCommonBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcn/mucang/android/framework/account/databinding/AccountLoginSmsCommonBinding;
    .locals 2

    .line 2
    sget v0, Lcn/mucang/android/framework/account/R$layout;->account__login_sms_common:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4
    :cond_0
    invoke-static {p0}, Lcn/mucang/android/framework/account/databinding/AccountLoginSmsCommonBinding;->bind(Landroid/view/View;)Lcn/mucang/android/framework/account/databinding/AccountLoginSmsCommonBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/framework/account/databinding/AccountLoginSmsCommonBinding;->getRoot()Lcn/mucang/android/account/ui/LoginSmsCommonView;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Lcn/mucang/android/account/ui/LoginSmsCommonView;
    .locals 1

    .line 2
    iget-object v0, p0, Lcn/mucang/android/framework/account/databinding/AccountLoginSmsCommonBinding;->rootView:Lcn/mucang/android/account/ui/LoginSmsCommonView;

    return-object v0
.end method
