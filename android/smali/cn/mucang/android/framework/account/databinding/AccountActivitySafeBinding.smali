.class public final Lcn/mucang/android/framework/account/databinding/AccountActivitySafeBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/a;


# instance fields
.field public final account:Landroid/widget/RelativeLayout;

.field public final accountArrowRight:Landroid/widget/ImageView;

.field public final accountSafeWxBindTv:Landroid/widget/TextView;

.field public final accountSafeWxIv:Landroid/widget/ImageView;

.field public final accountSafeWxRl:Landroid/widget/RelativeLayout;

.field public final accountSafeXiaomiBindTv:Landroid/widget/TextView;

.field public final accountSafeXiaomiIv:Landroid/widget/ImageView;

.field public final accountSafeXiaomiRl:Landroid/widget/RelativeLayout;

.field public final accountText:Landroid/widget/TextView;

.field public final authRealName:Landroid/widget/RelativeLayout;

.field public final layoutUnregisterAccount:Landroid/widget/RelativeLayout;

.field public final password:Landroid/widget/RelativeLayout;

.field public final passwordArrowRight:Landroid/widget/ImageView;

.field public final passwordText:Landroid/widget/TextView;

.field public final realNameArrowRight:Landroid/widget/ImageView;

.field public final realNameText:Landroid/widget/TextView;

.field private final rootView:Landroid/widget/RelativeLayout;

.field public final titleBar:Lcn/mucang/android/framework/account/databinding/AccountIncludeTitleBarBinding;

.field public final unregisterAccountArrowRight:Landroid/widget/ImageView;


# direct methods
.method private constructor <init>(Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/RelativeLayout;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/RelativeLayout;Landroid/widget/TextView;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/TextView;Lcn/mucang/android/framework/account/databinding/AccountIncludeTitleBarBinding;Landroid/widget/ImageView;)V
    .locals 2

    move-object v0, p0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 2
    iput-object v1, v0, Lcn/mucang/android/framework/account/databinding/AccountActivitySafeBinding;->rootView:Landroid/widget/RelativeLayout;

    move-object v1, p2

    .line 3
    iput-object v1, v0, Lcn/mucang/android/framework/account/databinding/AccountActivitySafeBinding;->account:Landroid/widget/RelativeLayout;

    move-object v1, p3

    .line 4
    iput-object v1, v0, Lcn/mucang/android/framework/account/databinding/AccountActivitySafeBinding;->accountArrowRight:Landroid/widget/ImageView;

    move-object v1, p4

    .line 5
    iput-object v1, v0, Lcn/mucang/android/framework/account/databinding/AccountActivitySafeBinding;->accountSafeWxBindTv:Landroid/widget/TextView;

    move-object v1, p5

    .line 6
    iput-object v1, v0, Lcn/mucang/android/framework/account/databinding/AccountActivitySafeBinding;->accountSafeWxIv:Landroid/widget/ImageView;

    move-object v1, p6

    .line 7
    iput-object v1, v0, Lcn/mucang/android/framework/account/databinding/AccountActivitySafeBinding;->accountSafeWxRl:Landroid/widget/RelativeLayout;

    move-object v1, p7

    .line 8
    iput-object v1, v0, Lcn/mucang/android/framework/account/databinding/AccountActivitySafeBinding;->accountSafeXiaomiBindTv:Landroid/widget/TextView;

    move-object v1, p8

    .line 9
    iput-object v1, v0, Lcn/mucang/android/framework/account/databinding/AccountActivitySafeBinding;->accountSafeXiaomiIv:Landroid/widget/ImageView;

    move-object v1, p9

    .line 10
    iput-object v1, v0, Lcn/mucang/android/framework/account/databinding/AccountActivitySafeBinding;->accountSafeXiaomiRl:Landroid/widget/RelativeLayout;

    move-object v1, p10

    .line 11
    iput-object v1, v0, Lcn/mucang/android/framework/account/databinding/AccountActivitySafeBinding;->accountText:Landroid/widget/TextView;

    move-object v1, p11

    .line 12
    iput-object v1, v0, Lcn/mucang/android/framework/account/databinding/AccountActivitySafeBinding;->authRealName:Landroid/widget/RelativeLayout;

    move-object v1, p12

    .line 13
    iput-object v1, v0, Lcn/mucang/android/framework/account/databinding/AccountActivitySafeBinding;->layoutUnregisterAccount:Landroid/widget/RelativeLayout;

    move-object v1, p13

    .line 14
    iput-object v1, v0, Lcn/mucang/android/framework/account/databinding/AccountActivitySafeBinding;->password:Landroid/widget/RelativeLayout;

    move-object/from16 v1, p14

    .line 15
    iput-object v1, v0, Lcn/mucang/android/framework/account/databinding/AccountActivitySafeBinding;->passwordArrowRight:Landroid/widget/ImageView;

    move-object/from16 v1, p15

    .line 16
    iput-object v1, v0, Lcn/mucang/android/framework/account/databinding/AccountActivitySafeBinding;->passwordText:Landroid/widget/TextView;

    move-object/from16 v1, p16

    .line 17
    iput-object v1, v0, Lcn/mucang/android/framework/account/databinding/AccountActivitySafeBinding;->realNameArrowRight:Landroid/widget/ImageView;

    move-object/from16 v1, p17

    .line 18
    iput-object v1, v0, Lcn/mucang/android/framework/account/databinding/AccountActivitySafeBinding;->realNameText:Landroid/widget/TextView;

    move-object/from16 v1, p18

    .line 19
    iput-object v1, v0, Lcn/mucang/android/framework/account/databinding/AccountActivitySafeBinding;->titleBar:Lcn/mucang/android/framework/account/databinding/AccountIncludeTitleBarBinding;

    move-object/from16 v1, p19

    .line 20
    iput-object v1, v0, Lcn/mucang/android/framework/account/databinding/AccountActivitySafeBinding;->unregisterAccountArrowRight:Landroid/widget/ImageView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcn/mucang/android/framework/account/databinding/AccountActivitySafeBinding;
    .locals 23

    move-object/from16 v0, p0

    .line 1
    sget v1, Lcn/mucang/android/framework/account/R$id;->account:I

    .line 2
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroid/widget/RelativeLayout;

    if-eqz v5, :cond_0

    .line 3
    sget v1, Lcn/mucang/android/framework/account/R$id;->account_arrow_right:I

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/widget/ImageView;

    if-eqz v6, :cond_0

    .line 5
    sget v1, Lcn/mucang/android/framework/account/R$id;->account_safe_wx_bind_tv:I

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/widget/TextView;

    if-eqz v7, :cond_0

    .line 7
    sget v1, Lcn/mucang/android/framework/account/R$id;->account_safe_wx_iv:I

    .line 8
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/widget/ImageView;

    if-eqz v8, :cond_0

    .line 9
    sget v1, Lcn/mucang/android/framework/account/R$id;->account_safe_wx_rl:I

    .line 10
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/widget/RelativeLayout;

    if-eqz v9, :cond_0

    .line 11
    sget v1, Lcn/mucang/android/framework/account/R$id;->account_safe_xiaomi_bind_tv:I

    .line 12
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/widget/TextView;

    if-eqz v10, :cond_0

    .line 13
    sget v1, Lcn/mucang/android/framework/account/R$id;->account_safe_xiaomi_iv:I

    .line 14
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroid/widget/ImageView;

    if-eqz v11, :cond_0

    .line 15
    sget v1, Lcn/mucang/android/framework/account/R$id;->account_safe_xiaomi_rl:I

    .line 16
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroid/widget/RelativeLayout;

    if-eqz v12, :cond_0

    .line 17
    sget v1, Lcn/mucang/android/framework/account/R$id;->account_text:I

    .line 18
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroid/widget/TextView;

    if-eqz v13, :cond_0

    .line 19
    sget v1, Lcn/mucang/android/framework/account/R$id;->auth_real_name:I

    .line 20
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroid/widget/RelativeLayout;

    if-eqz v14, :cond_0

    .line 21
    sget v1, Lcn/mucang/android/framework/account/R$id;->layout_unregister_account:I

    .line 22
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Landroid/widget/RelativeLayout;

    if-eqz v15, :cond_0

    .line 23
    sget v1, Lcn/mucang/android/framework/account/R$id;->password:I

    .line 24
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Landroid/widget/RelativeLayout;

    if-eqz v16, :cond_0

    .line 25
    sget v1, Lcn/mucang/android/framework/account/R$id;->password_arrow_right:I

    .line 26
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Landroid/widget/ImageView;

    if-eqz v17, :cond_0

    .line 27
    sget v1, Lcn/mucang/android/framework/account/R$id;->password_text:I

    .line 28
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Landroid/widget/TextView;

    if-eqz v18, :cond_0

    .line 29
    sget v1, Lcn/mucang/android/framework/account/R$id;->real_name_arrow_right:I

    .line 30
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v19, v2

    check-cast v19, Landroid/widget/ImageView;

    if-eqz v19, :cond_0

    .line 31
    sget v1, Lcn/mucang/android/framework/account/R$id;->real_name_text:I

    .line 32
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v20, v2

    check-cast v20, Landroid/widget/TextView;

    if-eqz v20, :cond_0

    .line 33
    sget v1, Lcn/mucang/android/framework/account/R$id;->title_bar:I

    .line 34
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 35
    invoke-static {v2}, Lcn/mucang/android/framework/account/databinding/AccountIncludeTitleBarBinding;->bind(Landroid/view/View;)Lcn/mucang/android/framework/account/databinding/AccountIncludeTitleBarBinding;

    move-result-object v21

    .line 36
    sget v1, Lcn/mucang/android/framework/account/R$id;->unregister_account_arrow_right:I

    .line 37
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v22, v2

    check-cast v22, Landroid/widget/ImageView;

    if-eqz v22, :cond_0

    .line 38
    new-instance v1, Lcn/mucang/android/framework/account/databinding/AccountActivitySafeBinding;

    move-object v3, v1

    move-object v4, v0

    check-cast v4, Landroid/widget/RelativeLayout;

    invoke-direct/range {v3 .. v22}, Lcn/mucang/android/framework/account/databinding/AccountActivitySafeBinding;-><init>(Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/RelativeLayout;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/RelativeLayout;Landroid/widget/TextView;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/TextView;Lcn/mucang/android/framework/account/databinding/AccountIncludeTitleBarBinding;Landroid/widget/ImageView;)V

    return-object v1

    .line 39
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 40
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Missing required view with ID: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcn/mucang/android/framework/account/databinding/AccountActivitySafeBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-static {p0, v0, v1}, Lcn/mucang/android/framework/account/databinding/AccountActivitySafeBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcn/mucang/android/framework/account/databinding/AccountActivitySafeBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcn/mucang/android/framework/account/databinding/AccountActivitySafeBinding;
    .locals 2

    .line 2
    sget v0, Lcn/mucang/android/framework/account/R$layout;->account__activity_safe:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4
    :cond_0
    invoke-static {p0}, Lcn/mucang/android/framework/account/databinding/AccountActivitySafeBinding;->bind(Landroid/view/View;)Lcn/mucang/android/framework/account/databinding/AccountActivitySafeBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/framework/account/databinding/AccountActivitySafeBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/RelativeLayout;
    .locals 1

    .line 2
    iget-object v0, p0, Lcn/mucang/android/framework/account/databinding/AccountActivitySafeBinding;->rootView:Landroid/widget/RelativeLayout;

    return-object v0
.end method
