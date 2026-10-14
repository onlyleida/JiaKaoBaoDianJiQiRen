.class public final Lcn/mucang/android/framework/account/databinding/AccountActivityLoginSsoBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/a;


# instance fields
.field public final btnOk:Landroid/widget/Button;

.field public final codeInput:Landroid/widget/EditText;

.field public final codeInputClear:Landroid/widget/RelativeLayout;

.field public final codePanelBg:Landroid/view/View;

.field public final password:Landroid/widget/EditText;

.field public final passwordClear:Landroid/widget/RelativeLayout;

.field public final passwordPanelBg:Landroid/view/View;

.field public final rememberPassword:Landroid/widget/CheckBox;

.field public final rememberUsername:Landroid/widget/CheckBox;

.field private final rootView:Landroid/widget/RelativeLayout;

.field public final step1Panel:Landroid/widget/LinearLayout;

.field public final step2Panel:Landroid/widget/RelativeLayout;

.field public final titleBar:Lcn/mucang/android/framework/account/databinding/AccountIncludeTitleBarBinding;

.field public final username:Landroid/widget/EditText;

.field public final usernameClear:Landroid/widget/RelativeLayout;

.field public final usernamePanelBg:Landroid/view/View;


# direct methods
.method private constructor <init>(Landroid/widget/RelativeLayout;Landroid/widget/Button;Landroid/widget/EditText;Landroid/widget/RelativeLayout;Landroid/view/View;Landroid/widget/EditText;Landroid/widget/RelativeLayout;Landroid/view/View;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/LinearLayout;Landroid/widget/RelativeLayout;Lcn/mucang/android/framework/account/databinding/AccountIncludeTitleBarBinding;Landroid/widget/EditText;Landroid/widget/RelativeLayout;Landroid/view/View;)V
    .locals 2

    move-object v0, p0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 2
    iput-object v1, v0, Lcn/mucang/android/framework/account/databinding/AccountActivityLoginSsoBinding;->rootView:Landroid/widget/RelativeLayout;

    move-object v1, p2

    .line 3
    iput-object v1, v0, Lcn/mucang/android/framework/account/databinding/AccountActivityLoginSsoBinding;->btnOk:Landroid/widget/Button;

    move-object v1, p3

    .line 4
    iput-object v1, v0, Lcn/mucang/android/framework/account/databinding/AccountActivityLoginSsoBinding;->codeInput:Landroid/widget/EditText;

    move-object v1, p4

    .line 5
    iput-object v1, v0, Lcn/mucang/android/framework/account/databinding/AccountActivityLoginSsoBinding;->codeInputClear:Landroid/widget/RelativeLayout;

    move-object v1, p5

    .line 6
    iput-object v1, v0, Lcn/mucang/android/framework/account/databinding/AccountActivityLoginSsoBinding;->codePanelBg:Landroid/view/View;

    move-object v1, p6

    .line 7
    iput-object v1, v0, Lcn/mucang/android/framework/account/databinding/AccountActivityLoginSsoBinding;->password:Landroid/widget/EditText;

    move-object v1, p7

    .line 8
    iput-object v1, v0, Lcn/mucang/android/framework/account/databinding/AccountActivityLoginSsoBinding;->passwordClear:Landroid/widget/RelativeLayout;

    move-object v1, p8

    .line 9
    iput-object v1, v0, Lcn/mucang/android/framework/account/databinding/AccountActivityLoginSsoBinding;->passwordPanelBg:Landroid/view/View;

    move-object v1, p9

    .line 10
    iput-object v1, v0, Lcn/mucang/android/framework/account/databinding/AccountActivityLoginSsoBinding;->rememberPassword:Landroid/widget/CheckBox;

    move-object v1, p10

    .line 11
    iput-object v1, v0, Lcn/mucang/android/framework/account/databinding/AccountActivityLoginSsoBinding;->rememberUsername:Landroid/widget/CheckBox;

    move-object v1, p11

    .line 12
    iput-object v1, v0, Lcn/mucang/android/framework/account/databinding/AccountActivityLoginSsoBinding;->step1Panel:Landroid/widget/LinearLayout;

    move-object v1, p12

    .line 13
    iput-object v1, v0, Lcn/mucang/android/framework/account/databinding/AccountActivityLoginSsoBinding;->step2Panel:Landroid/widget/RelativeLayout;

    move-object v1, p13

    .line 14
    iput-object v1, v0, Lcn/mucang/android/framework/account/databinding/AccountActivityLoginSsoBinding;->titleBar:Lcn/mucang/android/framework/account/databinding/AccountIncludeTitleBarBinding;

    move-object/from16 v1, p14

    .line 15
    iput-object v1, v0, Lcn/mucang/android/framework/account/databinding/AccountActivityLoginSsoBinding;->username:Landroid/widget/EditText;

    move-object/from16 v1, p15

    .line 16
    iput-object v1, v0, Lcn/mucang/android/framework/account/databinding/AccountActivityLoginSsoBinding;->usernameClear:Landroid/widget/RelativeLayout;

    move-object/from16 v1, p16

    .line 17
    iput-object v1, v0, Lcn/mucang/android/framework/account/databinding/AccountActivityLoginSsoBinding;->usernamePanelBg:Landroid/view/View;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcn/mucang/android/framework/account/databinding/AccountActivityLoginSsoBinding;
    .locals 20

    move-object/from16 v0, p0

    .line 1
    sget v1, Lcn/mucang/android/framework/account/R$id;->btn_ok:I

    .line 2
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroid/widget/Button;

    if-eqz v5, :cond_0

    .line 3
    sget v1, Lcn/mucang/android/framework/account/R$id;->code_input:I

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/widget/EditText;

    if-eqz v6, :cond_0

    .line 5
    sget v1, Lcn/mucang/android/framework/account/R$id;->code_input_clear:I

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/widget/RelativeLayout;

    if-eqz v7, :cond_0

    .line 7
    sget v1, Lcn/mucang/android/framework/account/R$id;->code_panel_bg:I

    .line 8
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 9
    sget v1, Lcn/mucang/android/framework/account/R$id;->password:I

    .line 10
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/widget/EditText;

    if-eqz v9, :cond_0

    .line 11
    sget v1, Lcn/mucang/android/framework/account/R$id;->password_clear:I

    .line 12
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/widget/RelativeLayout;

    if-eqz v10, :cond_0

    .line 13
    sget v1, Lcn/mucang/android/framework/account/R$id;->password_panel_bg:I

    .line 14
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    if-eqz v11, :cond_0

    .line 15
    sget v1, Lcn/mucang/android/framework/account/R$id;->remember_password:I

    .line 16
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroid/widget/CheckBox;

    if-eqz v12, :cond_0

    .line 17
    sget v1, Lcn/mucang/android/framework/account/R$id;->remember_username:I

    .line 18
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroid/widget/CheckBox;

    if-eqz v13, :cond_0

    .line 19
    sget v1, Lcn/mucang/android/framework/account/R$id;->step1_panel:I

    .line 20
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroid/widget/LinearLayout;

    if-eqz v14, :cond_0

    .line 21
    sget v1, Lcn/mucang/android/framework/account/R$id;->step2_panel:I

    .line 22
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Landroid/widget/RelativeLayout;

    if-eqz v15, :cond_0

    .line 23
    sget v1, Lcn/mucang/android/framework/account/R$id;->title_bar:I

    .line 24
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 25
    invoke-static {v2}, Lcn/mucang/android/framework/account/databinding/AccountIncludeTitleBarBinding;->bind(Landroid/view/View;)Lcn/mucang/android/framework/account/databinding/AccountIncludeTitleBarBinding;

    move-result-object v16

    .line 26
    sget v1, Lcn/mucang/android/framework/account/R$id;->username:I

    .line 27
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Landroid/widget/EditText;

    if-eqz v17, :cond_0

    .line 28
    sget v1, Lcn/mucang/android/framework/account/R$id;->username_clear:I

    .line 29
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Landroid/widget/RelativeLayout;

    if-eqz v18, :cond_0

    .line 30
    sget v1, Lcn/mucang/android/framework/account/R$id;->username_panel_bg:I

    .line 31
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    if-eqz v19, :cond_0

    .line 32
    new-instance v1, Lcn/mucang/android/framework/account/databinding/AccountActivityLoginSsoBinding;

    move-object v3, v1

    move-object v4, v0

    check-cast v4, Landroid/widget/RelativeLayout;

    invoke-direct/range {v3 .. v19}, Lcn/mucang/android/framework/account/databinding/AccountActivityLoginSsoBinding;-><init>(Landroid/widget/RelativeLayout;Landroid/widget/Button;Landroid/widget/EditText;Landroid/widget/RelativeLayout;Landroid/view/View;Landroid/widget/EditText;Landroid/widget/RelativeLayout;Landroid/view/View;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/LinearLayout;Landroid/widget/RelativeLayout;Lcn/mucang/android/framework/account/databinding/AccountIncludeTitleBarBinding;Landroid/widget/EditText;Landroid/widget/RelativeLayout;Landroid/view/View;)V

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

.method public static inflate(Landroid/view/LayoutInflater;)Lcn/mucang/android/framework/account/databinding/AccountActivityLoginSsoBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-static {p0, v0, v1}, Lcn/mucang/android/framework/account/databinding/AccountActivityLoginSsoBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcn/mucang/android/framework/account/databinding/AccountActivityLoginSsoBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcn/mucang/android/framework/account/databinding/AccountActivityLoginSsoBinding;
    .locals 2

    .line 2
    sget v0, Lcn/mucang/android/framework/account/R$layout;->account__activity_login_sso:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4
    :cond_0
    invoke-static {p0}, Lcn/mucang/android/framework/account/databinding/AccountActivityLoginSsoBinding;->bind(Landroid/view/View;)Lcn/mucang/android/framework/account/databinding/AccountActivityLoginSsoBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/framework/account/databinding/AccountActivityLoginSsoBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/RelativeLayout;
    .locals 1

    .line 2
    iget-object v0, p0, Lcn/mucang/android/framework/account/databinding/AccountActivityLoginSsoBinding;->rootView:Landroid/widget/RelativeLayout;

    return-object v0
.end method
