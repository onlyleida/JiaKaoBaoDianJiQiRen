.class public final Lcn/mucang/android/framework/account/databinding/AccountActivityLoginMultiDefaultSmsBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/a;


# instance fields
.field public final accountAppeal:Landroid/widget/TextView;

.field public final accountLoginThirdLayoutIn:Lcn/mucang/android/framework/account/databinding/AccountActivityLoginThirdLayoutBinding;

.field public final btnSendVoiceCode:Landroid/widget/TextView;

.field public final loginByAccount:Landroid/widget/TextView;

.field private final rootView:Landroid/widget/RelativeLayout;

.field public final smsCommon:Lcn/mucang/android/framework/account/databinding/AccountLoginSmsCommonBinding;

.field public final titleBar:Lcn/mucang/android/framework/account/databinding/AccountIncludeTitleBarBinding;


# direct methods
.method private constructor <init>(Landroid/widget/RelativeLayout;Landroid/widget/TextView;Lcn/mucang/android/framework/account/databinding/AccountActivityLoginThirdLayoutBinding;Landroid/widget/TextView;Landroid/widget/TextView;Lcn/mucang/android/framework/account/databinding/AccountLoginSmsCommonBinding;Lcn/mucang/android/framework/account/databinding/AccountIncludeTitleBarBinding;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcn/mucang/android/framework/account/databinding/AccountActivityLoginMultiDefaultSmsBinding;->rootView:Landroid/widget/RelativeLayout;

    .line 3
    iput-object p2, p0, Lcn/mucang/android/framework/account/databinding/AccountActivityLoginMultiDefaultSmsBinding;->accountAppeal:Landroid/widget/TextView;

    .line 4
    iput-object p3, p0, Lcn/mucang/android/framework/account/databinding/AccountActivityLoginMultiDefaultSmsBinding;->accountLoginThirdLayoutIn:Lcn/mucang/android/framework/account/databinding/AccountActivityLoginThirdLayoutBinding;

    .line 5
    iput-object p4, p0, Lcn/mucang/android/framework/account/databinding/AccountActivityLoginMultiDefaultSmsBinding;->btnSendVoiceCode:Landroid/widget/TextView;

    .line 6
    iput-object p5, p0, Lcn/mucang/android/framework/account/databinding/AccountActivityLoginMultiDefaultSmsBinding;->loginByAccount:Landroid/widget/TextView;

    .line 7
    iput-object p6, p0, Lcn/mucang/android/framework/account/databinding/AccountActivityLoginMultiDefaultSmsBinding;->smsCommon:Lcn/mucang/android/framework/account/databinding/AccountLoginSmsCommonBinding;

    .line 8
    iput-object p7, p0, Lcn/mucang/android/framework/account/databinding/AccountActivityLoginMultiDefaultSmsBinding;->titleBar:Lcn/mucang/android/framework/account/databinding/AccountIncludeTitleBarBinding;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcn/mucang/android/framework/account/databinding/AccountActivityLoginMultiDefaultSmsBinding;
    .locals 10

    .line 1
    sget v0, Lcn/mucang/android/framework/account/R$id;->account_appeal:I

    .line 2
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/TextView;

    if-eqz v4, :cond_0

    .line 3
    sget v0, Lcn/mucang/android/framework/account/R$id;->account__login_third_layout_in:I

    .line 4
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 5
    invoke-static {v1}, Lcn/mucang/android/framework/account/databinding/AccountActivityLoginThirdLayoutBinding;->bind(Landroid/view/View;)Lcn/mucang/android/framework/account/databinding/AccountActivityLoginThirdLayoutBinding;

    move-result-object v5

    .line 6
    sget v0, Lcn/mucang/android/framework/account/R$id;->btn_send_voice_code:I

    .line 7
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/TextView;

    if-eqz v6, :cond_0

    .line 8
    sget v0, Lcn/mucang/android/framework/account/R$id;->login_by_account:I

    .line 9
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/TextView;

    if-eqz v7, :cond_0

    .line 10
    sget v0, Lcn/mucang/android/framework/account/R$id;->sms_common:I

    .line 11
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 12
    invoke-static {v1}, Lcn/mucang/android/framework/account/databinding/AccountLoginSmsCommonBinding;->bind(Landroid/view/View;)Lcn/mucang/android/framework/account/databinding/AccountLoginSmsCommonBinding;

    move-result-object v8

    .line 13
    sget v0, Lcn/mucang/android/framework/account/R$id;->title_bar:I

    .line 14
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 15
    invoke-static {v1}, Lcn/mucang/android/framework/account/databinding/AccountIncludeTitleBarBinding;->bind(Landroid/view/View;)Lcn/mucang/android/framework/account/databinding/AccountIncludeTitleBarBinding;

    move-result-object v9

    .line 16
    new-instance v0, Lcn/mucang/android/framework/account/databinding/AccountActivityLoginMultiDefaultSmsBinding;

    move-object v3, p0

    check-cast v3, Landroid/widget/RelativeLayout;

    move-object v2, v0

    invoke-direct/range {v2 .. v9}, Lcn/mucang/android/framework/account/databinding/AccountActivityLoginMultiDefaultSmsBinding;-><init>(Landroid/widget/RelativeLayout;Landroid/widget/TextView;Lcn/mucang/android/framework/account/databinding/AccountActivityLoginThirdLayoutBinding;Landroid/widget/TextView;Landroid/widget/TextView;Lcn/mucang/android/framework/account/databinding/AccountLoginSmsCommonBinding;Lcn/mucang/android/framework/account/databinding/AccountIncludeTitleBarBinding;)V

    return-object v0

    .line 17
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 18
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcn/mucang/android/framework/account/databinding/AccountActivityLoginMultiDefaultSmsBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-static {p0, v0, v1}, Lcn/mucang/android/framework/account/databinding/AccountActivityLoginMultiDefaultSmsBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcn/mucang/android/framework/account/databinding/AccountActivityLoginMultiDefaultSmsBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcn/mucang/android/framework/account/databinding/AccountActivityLoginMultiDefaultSmsBinding;
    .locals 2

    .line 2
    sget v0, Lcn/mucang/android/framework/account/R$layout;->account__activity_login_multi_default_sms:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4
    :cond_0
    invoke-static {p0}, Lcn/mucang/android/framework/account/databinding/AccountActivityLoginMultiDefaultSmsBinding;->bind(Landroid/view/View;)Lcn/mucang/android/framework/account/databinding/AccountActivityLoginMultiDefaultSmsBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/framework/account/databinding/AccountActivityLoginMultiDefaultSmsBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/RelativeLayout;
    .locals 1

    .line 2
    iget-object v0, p0, Lcn/mucang/android/framework/account/databinding/AccountActivityLoginMultiDefaultSmsBinding;->rootView:Landroid/widget/RelativeLayout;

    return-object v0
.end method
