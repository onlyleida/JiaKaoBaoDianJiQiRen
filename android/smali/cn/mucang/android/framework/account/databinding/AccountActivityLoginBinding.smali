.class public final Lcn/mucang/android/framework/account/databinding/AccountActivityLoginBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/a;


# instance fields
.field public final accountAppeal:Landroid/widget/TextView;

.field public final accountLoginThirdLayoutIn:Lcn/mucang/android/framework/account/databinding/AccountActivityLoginThirdLayoutBinding;

.field public final accountProtocolIn:Lcn/mucang/android/framework/account/databinding/AccountIncludeProtocolBinding;

.field public final btnOk:Landroid/widget/Button;

.field public final canNotLogin:Landroid/widget/TextView;

.field public final ivPassword:Landroid/widget/ImageView;

.field public final ivPhoneNumber:Landroid/widget/ImageView;

.field public final loginSms:Landroid/widget/TextView;

.field public final password:Landroid/widget/EditText;

.field public final passwordPanelBg:Landroid/view/View;

.field public final phoneLoginMask:Landroid/widget/RelativeLayout;

.field private final rootView:Landroid/widget/RelativeLayout;

.field public final titleBar:Lcn/mucang/android/framework/account/databinding/AccountIncludeTitleBarBinding;

.field public final username:Landroid/widget/EditText;

.field public final usernamePanelBg:Landroid/view/View;


# direct methods
.method private constructor <init>(Landroid/widget/RelativeLayout;Landroid/widget/TextView;Lcn/mucang/android/framework/account/databinding/AccountActivityLoginThirdLayoutBinding;Lcn/mucang/android/framework/account/databinding/AccountIncludeProtocolBinding;Landroid/widget/Button;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/EditText;Landroid/view/View;Landroid/widget/RelativeLayout;Lcn/mucang/android/framework/account/databinding/AccountIncludeTitleBarBinding;Landroid/widget/EditText;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcn/mucang/android/framework/account/databinding/AccountActivityLoginBinding;->rootView:Landroid/widget/RelativeLayout;

    .line 3
    iput-object p2, p0, Lcn/mucang/android/framework/account/databinding/AccountActivityLoginBinding;->accountAppeal:Landroid/widget/TextView;

    .line 4
    iput-object p3, p0, Lcn/mucang/android/framework/account/databinding/AccountActivityLoginBinding;->accountLoginThirdLayoutIn:Lcn/mucang/android/framework/account/databinding/AccountActivityLoginThirdLayoutBinding;

    .line 5
    iput-object p4, p0, Lcn/mucang/android/framework/account/databinding/AccountActivityLoginBinding;->accountProtocolIn:Lcn/mucang/android/framework/account/databinding/AccountIncludeProtocolBinding;

    .line 6
    iput-object p5, p0, Lcn/mucang/android/framework/account/databinding/AccountActivityLoginBinding;->btnOk:Landroid/widget/Button;

    .line 7
    iput-object p6, p0, Lcn/mucang/android/framework/account/databinding/AccountActivityLoginBinding;->canNotLogin:Landroid/widget/TextView;

    .line 8
    iput-object p7, p0, Lcn/mucang/android/framework/account/databinding/AccountActivityLoginBinding;->ivPassword:Landroid/widget/ImageView;

    .line 9
    iput-object p8, p0, Lcn/mucang/android/framework/account/databinding/AccountActivityLoginBinding;->ivPhoneNumber:Landroid/widget/ImageView;

    .line 10
    iput-object p9, p0, Lcn/mucang/android/framework/account/databinding/AccountActivityLoginBinding;->loginSms:Landroid/widget/TextView;

    .line 11
    iput-object p10, p0, Lcn/mucang/android/framework/account/databinding/AccountActivityLoginBinding;->password:Landroid/widget/EditText;

    .line 12
    iput-object p11, p0, Lcn/mucang/android/framework/account/databinding/AccountActivityLoginBinding;->passwordPanelBg:Landroid/view/View;

    .line 13
    iput-object p12, p0, Lcn/mucang/android/framework/account/databinding/AccountActivityLoginBinding;->phoneLoginMask:Landroid/widget/RelativeLayout;

    .line 14
    iput-object p13, p0, Lcn/mucang/android/framework/account/databinding/AccountActivityLoginBinding;->titleBar:Lcn/mucang/android/framework/account/databinding/AccountIncludeTitleBarBinding;

    .line 15
    iput-object p14, p0, Lcn/mucang/android/framework/account/databinding/AccountActivityLoginBinding;->username:Landroid/widget/EditText;

    .line 16
    iput-object p15, p0, Lcn/mucang/android/framework/account/databinding/AccountActivityLoginBinding;->usernamePanelBg:Landroid/view/View;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcn/mucang/android/framework/account/databinding/AccountActivityLoginBinding;
    .locals 19

    move-object/from16 v0, p0

    .line 1
    sget v1, Lcn/mucang/android/framework/account/R$id;->account_appeal:I

    .line 2
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroid/widget/TextView;

    if-eqz v5, :cond_0

    .line 3
    sget v1, Lcn/mucang/android/framework/account/R$id;->account__login_third_layout_in:I

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 5
    invoke-static {v2}, Lcn/mucang/android/framework/account/databinding/AccountActivityLoginThirdLayoutBinding;->bind(Landroid/view/View;)Lcn/mucang/android/framework/account/databinding/AccountActivityLoginThirdLayoutBinding;

    move-result-object v6

    .line 6
    sget v1, Lcn/mucang/android/framework/account/R$id;->account__protocol_in:I

    .line 7
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 8
    invoke-static {v2}, Lcn/mucang/android/framework/account/databinding/AccountIncludeProtocolBinding;->bind(Landroid/view/View;)Lcn/mucang/android/framework/account/databinding/AccountIncludeProtocolBinding;

    move-result-object v7

    .line 9
    sget v1, Lcn/mucang/android/framework/account/R$id;->btn_ok:I

    .line 10
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/widget/Button;

    if-eqz v8, :cond_0

    .line 11
    sget v1, Lcn/mucang/android/framework/account/R$id;->can_not_login:I

    .line 12
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/widget/TextView;

    if-eqz v9, :cond_0

    .line 13
    sget v1, Lcn/mucang/android/framework/account/R$id;->iv_password:I

    .line 14
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/widget/ImageView;

    if-eqz v10, :cond_0

    .line 15
    sget v1, Lcn/mucang/android/framework/account/R$id;->iv_phone_number:I

    .line 16
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroid/widget/ImageView;

    if-eqz v11, :cond_0

    .line 17
    sget v1, Lcn/mucang/android/framework/account/R$id;->login_sms:I

    .line 18
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroid/widget/TextView;

    if-eqz v12, :cond_0

    .line 19
    sget v1, Lcn/mucang/android/framework/account/R$id;->password:I

    .line 20
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroid/widget/EditText;

    if-eqz v13, :cond_0

    .line 21
    sget v1, Lcn/mucang/android/framework/account/R$id;->password_panel_bg:I

    .line 22
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    if-eqz v14, :cond_0

    .line 23
    sget v1, Lcn/mucang/android/framework/account/R$id;->phone_login_mask:I

    .line 24
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Landroid/widget/RelativeLayout;

    if-eqz v15, :cond_0

    .line 25
    sget v1, Lcn/mucang/android/framework/account/R$id;->title_bar:I

    .line 26
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 27
    invoke-static {v2}, Lcn/mucang/android/framework/account/databinding/AccountIncludeTitleBarBinding;->bind(Landroid/view/View;)Lcn/mucang/android/framework/account/databinding/AccountIncludeTitleBarBinding;

    move-result-object v16

    .line 28
    sget v1, Lcn/mucang/android/framework/account/R$id;->username:I

    .line 29
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Landroid/widget/EditText;

    if-eqz v17, :cond_0

    .line 30
    sget v1, Lcn/mucang/android/framework/account/R$id;->username_panel_bg:I

    .line 31
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    if-eqz v18, :cond_0

    .line 32
    new-instance v1, Lcn/mucang/android/framework/account/databinding/AccountActivityLoginBinding;

    move-object v4, v0

    check-cast v4, Landroid/widget/RelativeLayout;

    move-object v3, v1

    invoke-direct/range {v3 .. v18}, Lcn/mucang/android/framework/account/databinding/AccountActivityLoginBinding;-><init>(Landroid/widget/RelativeLayout;Landroid/widget/TextView;Lcn/mucang/android/framework/account/databinding/AccountActivityLoginThirdLayoutBinding;Lcn/mucang/android/framework/account/databinding/AccountIncludeProtocolBinding;Landroid/widget/Button;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/EditText;Landroid/view/View;Landroid/widget/RelativeLayout;Lcn/mucang/android/framework/account/databinding/AccountIncludeTitleBarBinding;Landroid/widget/EditText;Landroid/view/View;)V

    return-object v1

    .line 33
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 34
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Missing required view with ID: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcn/mucang/android/framework/account/databinding/AccountActivityLoginBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-static {p0, v0, v1}, Lcn/mucang/android/framework/account/databinding/AccountActivityLoginBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcn/mucang/android/framework/account/databinding/AccountActivityLoginBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcn/mucang/android/framework/account/databinding/AccountActivityLoginBinding;
    .locals 2

    .line 2
    sget v0, Lcn/mucang/android/framework/account/R$layout;->account__activity_login:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4
    :cond_0
    invoke-static {p0}, Lcn/mucang/android/framework/account/databinding/AccountActivityLoginBinding;->bind(Landroid/view/View;)Lcn/mucang/android/framework/account/databinding/AccountActivityLoginBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/framework/account/databinding/AccountActivityLoginBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/RelativeLayout;
    .locals 1

    .line 2
    iget-object v0, p0, Lcn/mucang/android/framework/account/databinding/AccountActivityLoginBinding;->rootView:Landroid/widget/RelativeLayout;

    return-object v0
.end method
