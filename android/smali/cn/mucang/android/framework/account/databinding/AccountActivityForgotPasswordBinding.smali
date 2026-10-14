.class public final Lcn/mucang/android/framework/account/databinding/AccountActivityForgotPasswordBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/a;


# instance fields
.field public final accountProtocolIn:Lcn/mucang/android/framework/account/databinding/AccountIncludeProtocolBinding;

.field public final btnOk:Landroid/widget/Button;

.field public final captcha:Lcn/mucang/android/framework/account/databinding/AccountWidgetCaptchaBinding;

.field public final ivPhoneNumber:Landroid/widget/ImageView;

.field private final rootView:Landroid/widget/RelativeLayout;

.field public final titleBar:Lcn/mucang/android/framework/account/databinding/AccountIncludeTitleBarBinding;

.field public final username:Landroid/widget/EditText;

.field public final usernamePanelBg:Landroid/view/View;


# direct methods
.method private constructor <init>(Landroid/widget/RelativeLayout;Lcn/mucang/android/framework/account/databinding/AccountIncludeProtocolBinding;Landroid/widget/Button;Lcn/mucang/android/framework/account/databinding/AccountWidgetCaptchaBinding;Landroid/widget/ImageView;Lcn/mucang/android/framework/account/databinding/AccountIncludeTitleBarBinding;Landroid/widget/EditText;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcn/mucang/android/framework/account/databinding/AccountActivityForgotPasswordBinding;->rootView:Landroid/widget/RelativeLayout;

    .line 3
    iput-object p2, p0, Lcn/mucang/android/framework/account/databinding/AccountActivityForgotPasswordBinding;->accountProtocolIn:Lcn/mucang/android/framework/account/databinding/AccountIncludeProtocolBinding;

    .line 4
    iput-object p3, p0, Lcn/mucang/android/framework/account/databinding/AccountActivityForgotPasswordBinding;->btnOk:Landroid/widget/Button;

    .line 5
    iput-object p4, p0, Lcn/mucang/android/framework/account/databinding/AccountActivityForgotPasswordBinding;->captcha:Lcn/mucang/android/framework/account/databinding/AccountWidgetCaptchaBinding;

    .line 6
    iput-object p5, p0, Lcn/mucang/android/framework/account/databinding/AccountActivityForgotPasswordBinding;->ivPhoneNumber:Landroid/widget/ImageView;

    .line 7
    iput-object p6, p0, Lcn/mucang/android/framework/account/databinding/AccountActivityForgotPasswordBinding;->titleBar:Lcn/mucang/android/framework/account/databinding/AccountIncludeTitleBarBinding;

    .line 8
    iput-object p7, p0, Lcn/mucang/android/framework/account/databinding/AccountActivityForgotPasswordBinding;->username:Landroid/widget/EditText;

    .line 9
    iput-object p8, p0, Lcn/mucang/android/framework/account/databinding/AccountActivityForgotPasswordBinding;->usernamePanelBg:Landroid/view/View;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcn/mucang/android/framework/account/databinding/AccountActivityForgotPasswordBinding;
    .locals 11

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
    sget v0, Lcn/mucang/android/framework/account/R$id;->captcha:I

    .line 7
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 8
    invoke-static {v1}, Lcn/mucang/android/framework/account/databinding/AccountWidgetCaptchaBinding;->bind(Landroid/view/View;)Lcn/mucang/android/framework/account/databinding/AccountWidgetCaptchaBinding;

    move-result-object v6

    .line 9
    sget v0, Lcn/mucang/android/framework/account/R$id;->iv_phone_number:I

    .line 10
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/ImageView;

    if-eqz v7, :cond_0

    .line 11
    sget v0, Lcn/mucang/android/framework/account/R$id;->title_bar:I

    .line 12
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 13
    invoke-static {v1}, Lcn/mucang/android/framework/account/databinding/AccountIncludeTitleBarBinding;->bind(Landroid/view/View;)Lcn/mucang/android/framework/account/databinding/AccountIncludeTitleBarBinding;

    move-result-object v8

    .line 14
    sget v0, Lcn/mucang/android/framework/account/R$id;->username:I

    .line 15
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/EditText;

    if-eqz v9, :cond_0

    .line 16
    sget v0, Lcn/mucang/android/framework/account/R$id;->username_panel_bg:I

    .line 17
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    if-eqz v10, :cond_0

    .line 18
    new-instance v0, Lcn/mucang/android/framework/account/databinding/AccountActivityForgotPasswordBinding;

    move-object v3, p0

    check-cast v3, Landroid/widget/RelativeLayout;

    move-object v2, v0

    invoke-direct/range {v2 .. v10}, Lcn/mucang/android/framework/account/databinding/AccountActivityForgotPasswordBinding;-><init>(Landroid/widget/RelativeLayout;Lcn/mucang/android/framework/account/databinding/AccountIncludeProtocolBinding;Landroid/widget/Button;Lcn/mucang/android/framework/account/databinding/AccountWidgetCaptchaBinding;Landroid/widget/ImageView;Lcn/mucang/android/framework/account/databinding/AccountIncludeTitleBarBinding;Landroid/widget/EditText;Landroid/view/View;)V

    return-object v0

    .line 19
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 20
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcn/mucang/android/framework/account/databinding/AccountActivityForgotPasswordBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-static {p0, v0, v1}, Lcn/mucang/android/framework/account/databinding/AccountActivityForgotPasswordBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcn/mucang/android/framework/account/databinding/AccountActivityForgotPasswordBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcn/mucang/android/framework/account/databinding/AccountActivityForgotPasswordBinding;
    .locals 2

    .line 2
    sget v0, Lcn/mucang/android/framework/account/R$layout;->account__activity_forgot_password:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4
    :cond_0
    invoke-static {p0}, Lcn/mucang/android/framework/account/databinding/AccountActivityForgotPasswordBinding;->bind(Landroid/view/View;)Lcn/mucang/android/framework/account/databinding/AccountActivityForgotPasswordBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/framework/account/databinding/AccountActivityForgotPasswordBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/RelativeLayout;
    .locals 1

    .line 2
    iget-object v0, p0, Lcn/mucang/android/framework/account/databinding/AccountActivityForgotPasswordBinding;->rootView:Landroid/widget/RelativeLayout;

    return-object v0
.end method
