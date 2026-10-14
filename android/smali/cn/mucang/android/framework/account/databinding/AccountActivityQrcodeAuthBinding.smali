.class public final Lcn/mucang/android/framework/account/databinding/AccountActivityQrcodeAuthBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/a;


# instance fields
.field public final accountProtocol:Lcn/mucang/android/framework/account/databinding/AccountIncludeProtocolBinding;

.field public final accountQrcodeAppInfo:Landroid/widget/LinearLayout;

.field public final accountQrcodeAppTip:Landroid/widget/LinearLayout;

.field public final accountQrcodeApply:Landroid/widget/TextView;

.field public final accountQrcodeBottom:Landroid/widget/LinearLayout;

.field public final accountQrcodeCancel:Landroid/widget/TextView;

.field public final accountQrcodeError:Lcn/mucang/android/framework/account/databinding/AccountActivityQrcodeAuthErrorBinding;

.field public final accountQrcodeLogin:Landroid/widget/Button;

.field public final accountQrcodeLogo:Landroid/widget/ImageView;

.field public final accountQrcodeSecurityTip:Landroid/widget/TextView;

.field public final accountQrcodeTop:Landroid/widget/LinearLayout;

.field public final accountQrcodeUserAvatar:Landroid/widget/ImageView;

.field public final accountQrcodeUserName:Landroid/widget/TextView;

.field private final rootView:Landroid/widget/RelativeLayout;

.field public final titleBar:Lcn/mucang/android/framework/account/databinding/AccountIncludeTitleBarBinding;


# direct methods
.method private constructor <init>(Landroid/widget/RelativeLayout;Lcn/mucang/android/framework/account/databinding/AccountIncludeProtocolBinding;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/TextView;Lcn/mucang/android/framework/account/databinding/AccountActivityQrcodeAuthErrorBinding;Landroid/widget/Button;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/ImageView;Landroid/widget/TextView;Lcn/mucang/android/framework/account/databinding/AccountIncludeTitleBarBinding;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcn/mucang/android/framework/account/databinding/AccountActivityQrcodeAuthBinding;->rootView:Landroid/widget/RelativeLayout;

    .line 3
    iput-object p2, p0, Lcn/mucang/android/framework/account/databinding/AccountActivityQrcodeAuthBinding;->accountProtocol:Lcn/mucang/android/framework/account/databinding/AccountIncludeProtocolBinding;

    .line 4
    iput-object p3, p0, Lcn/mucang/android/framework/account/databinding/AccountActivityQrcodeAuthBinding;->accountQrcodeAppInfo:Landroid/widget/LinearLayout;

    .line 5
    iput-object p4, p0, Lcn/mucang/android/framework/account/databinding/AccountActivityQrcodeAuthBinding;->accountQrcodeAppTip:Landroid/widget/LinearLayout;

    .line 6
    iput-object p5, p0, Lcn/mucang/android/framework/account/databinding/AccountActivityQrcodeAuthBinding;->accountQrcodeApply:Landroid/widget/TextView;

    .line 7
    iput-object p6, p0, Lcn/mucang/android/framework/account/databinding/AccountActivityQrcodeAuthBinding;->accountQrcodeBottom:Landroid/widget/LinearLayout;

    .line 8
    iput-object p7, p0, Lcn/mucang/android/framework/account/databinding/AccountActivityQrcodeAuthBinding;->accountQrcodeCancel:Landroid/widget/TextView;

    .line 9
    iput-object p8, p0, Lcn/mucang/android/framework/account/databinding/AccountActivityQrcodeAuthBinding;->accountQrcodeError:Lcn/mucang/android/framework/account/databinding/AccountActivityQrcodeAuthErrorBinding;

    .line 10
    iput-object p9, p0, Lcn/mucang/android/framework/account/databinding/AccountActivityQrcodeAuthBinding;->accountQrcodeLogin:Landroid/widget/Button;

    .line 11
    iput-object p10, p0, Lcn/mucang/android/framework/account/databinding/AccountActivityQrcodeAuthBinding;->accountQrcodeLogo:Landroid/widget/ImageView;

    .line 12
    iput-object p11, p0, Lcn/mucang/android/framework/account/databinding/AccountActivityQrcodeAuthBinding;->accountQrcodeSecurityTip:Landroid/widget/TextView;

    .line 13
    iput-object p12, p0, Lcn/mucang/android/framework/account/databinding/AccountActivityQrcodeAuthBinding;->accountQrcodeTop:Landroid/widget/LinearLayout;

    .line 14
    iput-object p13, p0, Lcn/mucang/android/framework/account/databinding/AccountActivityQrcodeAuthBinding;->accountQrcodeUserAvatar:Landroid/widget/ImageView;

    .line 15
    iput-object p14, p0, Lcn/mucang/android/framework/account/databinding/AccountActivityQrcodeAuthBinding;->accountQrcodeUserName:Landroid/widget/TextView;

    .line 16
    iput-object p15, p0, Lcn/mucang/android/framework/account/databinding/AccountActivityQrcodeAuthBinding;->titleBar:Lcn/mucang/android/framework/account/databinding/AccountIncludeTitleBarBinding;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcn/mucang/android/framework/account/databinding/AccountActivityQrcodeAuthBinding;
    .locals 19

    move-object/from16 v0, p0

    .line 1
    sget v1, Lcn/mucang/android/framework/account/R$id;->account_protocol:I

    .line 2
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3
    invoke-static {v2}, Lcn/mucang/android/framework/account/databinding/AccountIncludeProtocolBinding;->bind(Landroid/view/View;)Lcn/mucang/android/framework/account/databinding/AccountIncludeProtocolBinding;

    move-result-object v5

    .line 4
    sget v1, Lcn/mucang/android/framework/account/R$id;->account__qrcode_app_info:I

    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/widget/LinearLayout;

    if-eqz v6, :cond_0

    .line 6
    sget v1, Lcn/mucang/android/framework/account/R$id;->account__qrcode_app_tip:I

    .line 7
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/widget/LinearLayout;

    if-eqz v7, :cond_0

    .line 8
    sget v1, Lcn/mucang/android/framework/account/R$id;->account__qrcode_apply:I

    .line 9
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/widget/TextView;

    if-eqz v8, :cond_0

    .line 10
    sget v1, Lcn/mucang/android/framework/account/R$id;->account__qrcode_bottom:I

    .line 11
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/widget/LinearLayout;

    if-eqz v9, :cond_0

    .line 12
    sget v1, Lcn/mucang/android/framework/account/R$id;->account__qrcode_cancel:I

    .line 13
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/widget/TextView;

    if-eqz v10, :cond_0

    .line 14
    sget v1, Lcn/mucang/android/framework/account/R$id;->account__qrcode_error:I

    .line 15
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 16
    invoke-static {v2}, Lcn/mucang/android/framework/account/databinding/AccountActivityQrcodeAuthErrorBinding;->bind(Landroid/view/View;)Lcn/mucang/android/framework/account/databinding/AccountActivityQrcodeAuthErrorBinding;

    move-result-object v11

    .line 17
    sget v1, Lcn/mucang/android/framework/account/R$id;->account__qrcode_login:I

    .line 18
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroid/widget/Button;

    if-eqz v12, :cond_0

    .line 19
    sget v1, Lcn/mucang/android/framework/account/R$id;->account__qrcode_logo:I

    .line 20
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroid/widget/ImageView;

    if-eqz v13, :cond_0

    .line 21
    sget v1, Lcn/mucang/android/framework/account/R$id;->account__qrcode_security_tip:I

    .line 22
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroid/widget/TextView;

    if-eqz v14, :cond_0

    .line 23
    sget v1, Lcn/mucang/android/framework/account/R$id;->account__qrcode_top:I

    .line 24
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Landroid/widget/LinearLayout;

    if-eqz v15, :cond_0

    .line 25
    sget v1, Lcn/mucang/android/framework/account/R$id;->account__qrcode_user_avatar:I

    .line 26
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Landroid/widget/ImageView;

    if-eqz v16, :cond_0

    .line 27
    sget v1, Lcn/mucang/android/framework/account/R$id;->account__qrcode_user_name:I

    .line 28
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Landroid/widget/TextView;

    if-eqz v17, :cond_0

    .line 29
    sget v1, Lcn/mucang/android/framework/account/R$id;->title_bar:I

    .line 30
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 31
    invoke-static {v2}, Lcn/mucang/android/framework/account/databinding/AccountIncludeTitleBarBinding;->bind(Landroid/view/View;)Lcn/mucang/android/framework/account/databinding/AccountIncludeTitleBarBinding;

    move-result-object v18

    .line 32
    new-instance v1, Lcn/mucang/android/framework/account/databinding/AccountActivityQrcodeAuthBinding;

    move-object v4, v0

    check-cast v4, Landroid/widget/RelativeLayout;

    move-object v3, v1

    invoke-direct/range {v3 .. v18}, Lcn/mucang/android/framework/account/databinding/AccountActivityQrcodeAuthBinding;-><init>(Landroid/widget/RelativeLayout;Lcn/mucang/android/framework/account/databinding/AccountIncludeProtocolBinding;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/TextView;Lcn/mucang/android/framework/account/databinding/AccountActivityQrcodeAuthErrorBinding;Landroid/widget/Button;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/ImageView;Landroid/widget/TextView;Lcn/mucang/android/framework/account/databinding/AccountIncludeTitleBarBinding;)V

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

.method public static inflate(Landroid/view/LayoutInflater;)Lcn/mucang/android/framework/account/databinding/AccountActivityQrcodeAuthBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-static {p0, v0, v1}, Lcn/mucang/android/framework/account/databinding/AccountActivityQrcodeAuthBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcn/mucang/android/framework/account/databinding/AccountActivityQrcodeAuthBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcn/mucang/android/framework/account/databinding/AccountActivityQrcodeAuthBinding;
    .locals 2

    .line 2
    sget v0, Lcn/mucang/android/framework/account/R$layout;->account__activity_qrcode_auth:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4
    :cond_0
    invoke-static {p0}, Lcn/mucang/android/framework/account/databinding/AccountActivityQrcodeAuthBinding;->bind(Landroid/view/View;)Lcn/mucang/android/framework/account/databinding/AccountActivityQrcodeAuthBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/framework/account/databinding/AccountActivityQrcodeAuthBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/RelativeLayout;
    .locals 1

    .line 2
    iget-object v0, p0, Lcn/mucang/android/framework/account/databinding/AccountActivityQrcodeAuthBinding;->rootView:Landroid/widget/RelativeLayout;

    return-object v0
.end method
