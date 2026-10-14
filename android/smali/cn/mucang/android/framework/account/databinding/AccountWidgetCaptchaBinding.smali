.class public final Lcn/mucang/android/framework/account/databinding/AccountWidgetCaptchaBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/a;


# instance fields
.field public final captcha:Lcn/mucang/android/account/ui/CaptchaView;

.field public final captchaCode:Landroid/widget/EditText;

.field public final captchaContainer:Landroid/widget/FrameLayout;

.field public final captchaError:Landroid/widget/TextView;

.field public final captchaProgress:Landroid/widget/ProgressBar;

.field public final captchaRefresh:Landroid/widget/TextView;

.field public final captchaRl:Landroid/widget/RelativeLayout;

.field public final captchaView:Landroid/widget/ImageView;

.field public final ivPhoneCode:Landroid/widget/ImageView;

.field private final rootView:Lcn/mucang/android/account/ui/CaptchaView;


# direct methods
.method private constructor <init>(Lcn/mucang/android/account/ui/CaptchaView;Lcn/mucang/android/account/ui/CaptchaView;Landroid/widget/EditText;Landroid/widget/FrameLayout;Landroid/widget/TextView;Landroid/widget/ProgressBar;Landroid/widget/TextView;Landroid/widget/RelativeLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcn/mucang/android/framework/account/databinding/AccountWidgetCaptchaBinding;->rootView:Lcn/mucang/android/account/ui/CaptchaView;

    .line 3
    iput-object p2, p0, Lcn/mucang/android/framework/account/databinding/AccountWidgetCaptchaBinding;->captcha:Lcn/mucang/android/account/ui/CaptchaView;

    .line 4
    iput-object p3, p0, Lcn/mucang/android/framework/account/databinding/AccountWidgetCaptchaBinding;->captchaCode:Landroid/widget/EditText;

    .line 5
    iput-object p4, p0, Lcn/mucang/android/framework/account/databinding/AccountWidgetCaptchaBinding;->captchaContainer:Landroid/widget/FrameLayout;

    .line 6
    iput-object p5, p0, Lcn/mucang/android/framework/account/databinding/AccountWidgetCaptchaBinding;->captchaError:Landroid/widget/TextView;

    .line 7
    iput-object p6, p0, Lcn/mucang/android/framework/account/databinding/AccountWidgetCaptchaBinding;->captchaProgress:Landroid/widget/ProgressBar;

    .line 8
    iput-object p7, p0, Lcn/mucang/android/framework/account/databinding/AccountWidgetCaptchaBinding;->captchaRefresh:Landroid/widget/TextView;

    .line 9
    iput-object p8, p0, Lcn/mucang/android/framework/account/databinding/AccountWidgetCaptchaBinding;->captchaRl:Landroid/widget/RelativeLayout;

    .line 10
    iput-object p9, p0, Lcn/mucang/android/framework/account/databinding/AccountWidgetCaptchaBinding;->captchaView:Landroid/widget/ImageView;

    .line 11
    iput-object p10, p0, Lcn/mucang/android/framework/account/databinding/AccountWidgetCaptchaBinding;->ivPhoneCode:Landroid/widget/ImageView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcn/mucang/android/framework/account/databinding/AccountWidgetCaptchaBinding;
    .locals 11

    .line 1
    move-object v2, p0

    check-cast v2, Lcn/mucang/android/account/ui/CaptchaView;

    .line 2
    sget v0, Lcn/mucang/android/framework/account/R$id;->captcha_code:I

    .line 3
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/widget/EditText;

    if-eqz v3, :cond_0

    .line 4
    sget v0, Lcn/mucang/android/framework/account/R$id;->captcha_container:I

    .line 5
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/FrameLayout;

    if-eqz v4, :cond_0

    .line 6
    sget v0, Lcn/mucang/android/framework/account/R$id;->captcha_error:I

    .line 7
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/TextView;

    if-eqz v5, :cond_0

    .line 8
    sget v0, Lcn/mucang/android/framework/account/R$id;->captcha_progress:I

    .line 9
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/ProgressBar;

    if-eqz v6, :cond_0

    .line 10
    sget v0, Lcn/mucang/android/framework/account/R$id;->captcha_refresh:I

    .line 11
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/TextView;

    if-eqz v7, :cond_0

    .line 12
    sget v0, Lcn/mucang/android/framework/account/R$id;->captcha_rl:I

    .line 13
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/RelativeLayout;

    if-eqz v8, :cond_0

    .line 14
    sget v0, Lcn/mucang/android/framework/account/R$id;->captcha_view:I

    .line 15
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/ImageView;

    if-eqz v9, :cond_0

    .line 16
    sget v0, Lcn/mucang/android/framework/account/R$id;->iv_phone_code:I

    .line 17
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/widget/ImageView;

    if-eqz v10, :cond_0

    .line 18
    new-instance p0, Lcn/mucang/android/framework/account/databinding/AccountWidgetCaptchaBinding;

    move-object v0, p0

    move-object v1, v2

    invoke-direct/range {v0 .. v10}, Lcn/mucang/android/framework/account/databinding/AccountWidgetCaptchaBinding;-><init>(Lcn/mucang/android/account/ui/CaptchaView;Lcn/mucang/android/account/ui/CaptchaView;Landroid/widget/EditText;Landroid/widget/FrameLayout;Landroid/widget/TextView;Landroid/widget/ProgressBar;Landroid/widget/TextView;Landroid/widget/RelativeLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    return-object p0

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

.method public static inflate(Landroid/view/LayoutInflater;)Lcn/mucang/android/framework/account/databinding/AccountWidgetCaptchaBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-static {p0, v0, v1}, Lcn/mucang/android/framework/account/databinding/AccountWidgetCaptchaBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcn/mucang/android/framework/account/databinding/AccountWidgetCaptchaBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcn/mucang/android/framework/account/databinding/AccountWidgetCaptchaBinding;
    .locals 2

    .line 2
    sget v0, Lcn/mucang/android/framework/account/R$layout;->account__widget_captcha:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4
    :cond_0
    invoke-static {p0}, Lcn/mucang/android/framework/account/databinding/AccountWidgetCaptchaBinding;->bind(Landroid/view/View;)Lcn/mucang/android/framework/account/databinding/AccountWidgetCaptchaBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/framework/account/databinding/AccountWidgetCaptchaBinding;->getRoot()Lcn/mucang/android/account/ui/CaptchaView;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Lcn/mucang/android/account/ui/CaptchaView;
    .locals 1

    .line 2
    iget-object v0, p0, Lcn/mucang/android/framework/account/databinding/AccountWidgetCaptchaBinding;->rootView:Lcn/mucang/android/account/ui/CaptchaView;

    return-object v0
.end method
