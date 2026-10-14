.class public Lcom/mobile/auth/gatewayauth/activity/AuthWebVeiwActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# instance fields
.field private a:Landroid/webkit/WebView;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Landroid/widget/ProgressBar;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/RelativeLayout;

.field private g:Lcom/mobile/auth/gatewayauth/AuthUIConfig;

.field private h:Landroid/widget/ImageButton;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/mobile/auth/gatewayauth/activity/AuthWebVeiwActivity;)Landroid/widget/ProgressBar;
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/mobile/auth/gatewayauth/activity/AuthWebVeiwActivity;->d:Landroid/widget/ProgressBar;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic b(Lcom/mobile/auth/gatewayauth/activity/AuthWebVeiwActivity;)Ljava/lang/String;
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/mobile/auth/gatewayauth/activity/AuthWebVeiwActivity;->c:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic c(Lcom/mobile/auth/gatewayauth/activity/AuthWebVeiwActivity;)Landroid/widget/TextView;
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/mobile/auth/gatewayauth/activity/AuthWebVeiwActivity;->e:Landroid/widget/TextView;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    const-string v0, "id"

    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "url"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mobile/auth/gatewayauth/activity/AuthWebVeiwActivity;->b:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "name"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mobile/auth/gatewayauth/activity/AuthWebVeiwActivity;->c:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "ui_manager_id"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v4, "orientation"

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/app/Activity;->setRequestedOrientation(I)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {v1}, Lcom/mobile/auth/gatewayauth/d;->a(I)Lcom/mobile/auth/gatewayauth/d;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/mobile/auth/o/a;->a(Landroid/content/Context;)Lcom/mobile/auth/o/a;

    move-result-object p1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "UIManager is null!|ID:"

    aput-object v4, v2, v3

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v5

    invoke-virtual {p1, v2}, Lcom/mobile/auth/o/a;->d([Ljava/lang/String;)V

    sget-object p1, Lcom/mobile/auth/gatewayauth/d;->a:Lcom/mobile/auth/gatewayauth/AuthUIConfig;

    :goto_0
    iput-object p1, p0, Lcom/mobile/auth/gatewayauth/activity/AuthWebVeiwActivity;->g:Lcom/mobile/auth/gatewayauth/AuthUIConfig;

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lcom/mobile/auth/gatewayauth/d;->f()Lcom/mobile/auth/gatewayauth/AuthUIConfig;

    move-result-object p1

    goto :goto_0

    :goto_1
    const-string p1, "authsdk_dialog_layout"

    const-string v1, "layout"

    invoke-static {p0, p1, v1}, Lcom/nirvana/tools/core/AppUtils;->getResID(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    iget-object p1, p0, Lcom/mobile/auth/gatewayauth/activity/AuthWebVeiwActivity;->g:Lcom/mobile/auth/gatewayauth/AuthUIConfig;

    invoke-virtual {p1}, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->getWebViewStatusBarColor()I

    move-result p1

    sget v1, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->DEFAULT_WEB_STATUS_BAR_COLOR:I

    if-ne v1, p1, :cond_1

    iget-object p1, p0, Lcom/mobile/auth/gatewayauth/activity/AuthWebVeiwActivity;->g:Lcom/mobile/auth/gatewayauth/AuthUIConfig;

    invoke-virtual {p1}, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->getWebNavColor()I

    move-result p1

    :cond_1
    iget-object v1, p0, Lcom/mobile/auth/gatewayauth/activity/AuthWebVeiwActivity;->g:Lcom/mobile/auth/gatewayauth/AuthUIConfig;

    invoke-static {v1, p1, p0}, Lcom/mobile/auth/gatewayauth/d;->a(Lcom/mobile/auth/gatewayauth/AuthUIConfig;ILandroid/app/Activity;)V

    const-string p1, "authsdk_title_tv"

    invoke-static {p0, p1, v0}, Lcom/nirvana/tools/core/AppUtils;->getResID(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/mobile/auth/gatewayauth/activity/AuthWebVeiwActivity;->e:Landroid/widget/TextView;

    const-string p1, "authsdk_title_rl"

    invoke-static {p0, p1, v0}, Lcom/nirvana/tools/core/AppUtils;->getResID(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/mobile/auth/gatewayauth/activity/AuthWebVeiwActivity;->f:Landroid/widget/RelativeLayout;

    const-string p1, "authsdk_back_btn"

    invoke-static {p0, p1, v0}, Lcom/nirvana/tools/core/AppUtils;->getResID(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, p0, Lcom/mobile/auth/gatewayauth/activity/AuthWebVeiwActivity;->h:Landroid/widget/ImageButton;

    iget-object p1, p0, Lcom/mobile/auth/gatewayauth/activity/AuthWebVeiwActivity;->f:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/mobile/auth/gatewayauth/activity/AuthWebVeiwActivity;->g:Lcom/mobile/auth/gatewayauth/AuthUIConfig;

    invoke-virtual {v1}, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->getWebNavColor()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    iget-object p1, p0, Lcom/mobile/auth/gatewayauth/activity/AuthWebVeiwActivity;->e:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/mobile/auth/gatewayauth/activity/AuthWebVeiwActivity;->g:Lcom/mobile/auth/gatewayauth/AuthUIConfig;

    invoke-virtual {v1}, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->getWebNavTextColor()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p0, Lcom/mobile/auth/gatewayauth/activity/AuthWebVeiwActivity;->g:Lcom/mobile/auth/gatewayauth/AuthUIConfig;

    invoke-virtual {p1}, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->getWebNavTextSize()I

    move-result p1

    const/4 v1, -0x1

    if-eq p1, v1, :cond_2

    iget-object p1, p0, Lcom/mobile/auth/gatewayauth/activity/AuthWebVeiwActivity;->g:Lcom/mobile/auth/gatewayauth/AuthUIConfig;

    iget-object v1, p0, Lcom/mobile/auth/gatewayauth/activity/AuthWebVeiwActivity;->e:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->getWebNavTextSize()I

    move-result v2

    :goto_2
    invoke-virtual {p1, v1, v2}, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->setTextSize(Landroid/widget/TextView;I)V

    goto :goto_3

    :cond_2
    iget-object p1, p0, Lcom/mobile/auth/gatewayauth/activity/AuthWebVeiwActivity;->g:Lcom/mobile/auth/gatewayauth/AuthUIConfig;

    iget-object v1, p0, Lcom/mobile/auth/gatewayauth/activity/AuthWebVeiwActivity;->e:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->getNavTextSize()I

    move-result v2

    goto :goto_2

    :goto_3
    iget-object p1, p0, Lcom/mobile/auth/gatewayauth/activity/AuthWebVeiwActivity;->h:Landroid/widget/ImageButton;

    invoke-virtual {p1, v3}, Landroid/widget/ImageButton;->setBackgroundColor(I)V

    iget-object p1, p0, Lcom/mobile/auth/gatewayauth/activity/AuthWebVeiwActivity;->h:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/mobile/auth/gatewayauth/activity/AuthWebVeiwActivity;->g:Lcom/mobile/auth/gatewayauth/AuthUIConfig;

    invoke-virtual {v1}, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->getNavReturnScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/ImageButton;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object p1, p0, Lcom/mobile/auth/gatewayauth/activity/AuthWebVeiwActivity;->h:Landroid/widget/ImageButton;

    invoke-virtual {p1, v3, v3, v3, v3}, Landroid/widget/ImageButton;->setPadding(IIII)V

    iget-object p1, p0, Lcom/mobile/auth/gatewayauth/activity/AuthWebVeiwActivity;->g:Lcom/mobile/auth/gatewayauth/AuthUIConfig;

    invoke-virtual {p1}, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->getWebNavReturnImgDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/mobile/auth/gatewayauth/activity/AuthWebVeiwActivity;->g:Lcom/mobile/auth/gatewayauth/AuthUIConfig;

    invoke-virtual {p1}, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->getWebNavReturnImgPath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/mobile/auth/gatewayauth/utils/h;->c(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    :cond_3
    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/mobile/auth/gatewayauth/activity/AuthWebVeiwActivity;->g:Lcom/mobile/auth/gatewayauth/AuthUIConfig;

    invoke-virtual {p1}, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->getNavReturnImgDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    :cond_4
    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/mobile/auth/gatewayauth/activity/AuthWebVeiwActivity;->g:Lcom/mobile/auth/gatewayauth/AuthUIConfig;

    invoke-virtual {p1}, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->getNavReturnImgPath()Ljava/lang/String;

    move-result-object p1

    const-string v1, "authsdk_return_bg"

    invoke-static {p0, p1, v1}, Lcom/mobile/auth/gatewayauth/utils/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    :cond_5
    iget-object v1, p0, Lcom/mobile/auth/gatewayauth/activity/AuthWebVeiwActivity;->h:Landroid/widget/ImageButton;

    invoke-virtual {v1, p1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/mobile/auth/gatewayauth/activity/AuthWebVeiwActivity;->h:Landroid/widget/ImageButton;

    invoke-virtual {p1}, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v1, p0, Lcom/mobile/auth/gatewayauth/activity/AuthWebVeiwActivity;->g:Lcom/mobile/auth/gatewayauth/AuthUIConfig;

    invoke-virtual {v1}, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->getNavReturnImgWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-static {p0, v1}, Lcom/nirvana/tools/core/AppUtils;->dp2px(Landroid/content/Context;F)I

    move-result v1

    iput v1, p1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iget-object v1, p0, Lcom/mobile/auth/gatewayauth/activity/AuthWebVeiwActivity;->g:Lcom/mobile/auth/gatewayauth/AuthUIConfig;

    invoke-virtual {v1}, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->getNavReturnImgHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-static {p0, v1}, Lcom/nirvana/tools/core/AppUtils;->dp2px(Landroid/content/Context;F)I

    move-result v1

    iput v1, p1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iget-object p1, p0, Lcom/mobile/auth/gatewayauth/activity/AuthWebVeiwActivity;->h:Landroid/widget/ImageButton;

    new-instance v1, Lcom/mobile/auth/gatewayauth/activity/AuthWebVeiwActivity$1;

    invoke-direct {v1, p0}, Lcom/mobile/auth/gatewayauth/activity/AuthWebVeiwActivity$1;-><init>(Lcom/mobile/auth/gatewayauth/activity/AuthWebVeiwActivity;)V

    invoke-virtual {p1, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string p1, "authsdk_progressBar"

    invoke-static {p0, p1, v0}, Lcom/nirvana/tools/core/AppUtils;->getResID(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lcom/mobile/auth/gatewayauth/activity/AuthWebVeiwActivity;->d:Landroid/widget/ProgressBar;

    const-string p1, "authsdk_webview"

    invoke-static {p0, p1, v0}, Lcom/nirvana/tools/core/AppUtils;->getResID(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/webkit/WebView;

    iput-object p1, p0, Lcom/mobile/auth/gatewayauth/activity/AuthWebVeiwActivity;->a:Landroid/webkit/WebView;

    new-instance v0, Lcom/mobile/auth/gatewayauth/activity/AuthWebVeiwActivity$2;

    invoke-direct {v0, p0}, Lcom/mobile/auth/gatewayauth/activity/AuthWebVeiwActivity$2;-><init>(Lcom/mobile/auth/gatewayauth/activity/AuthWebVeiwActivity;)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    iget-object p1, p0, Lcom/mobile/auth/gatewayauth/activity/AuthWebVeiwActivity;->a:Landroid/webkit/WebView;

    new-instance v0, Lcom/mobile/auth/gatewayauth/activity/AuthWebVeiwActivity$3;

    invoke-direct {v0, p0}, Lcom/mobile/auth/gatewayauth/activity/AuthWebVeiwActivity$3;-><init>(Lcom/mobile/auth/gatewayauth/activity/AuthWebVeiwActivity;)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object p1, p0, Lcom/mobile/auth/gatewayauth/activity/AuthWebVeiwActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {p1, v3}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    iget-object p1, p0, Lcom/mobile/auth/gatewayauth/activity/AuthWebVeiwActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {p1, v3}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    iget-object p1, p0, Lcom/mobile/auth/gatewayauth/activity/AuthWebVeiwActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    invoke-virtual {p1, v5}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    invoke-virtual {p1, v5}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    invoke-virtual {p1, v3}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    invoke-virtual {p1, v3}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/activity/AuthWebVeiwActivity;->g:Lcom/mobile/auth/gatewayauth/AuthUIConfig;

    invoke-virtual {v0}, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->isWebSupportedJavascript()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    iget-object p1, p0, Lcom/mobile/auth/gatewayauth/activity/AuthWebVeiwActivity;->a:Landroid/webkit/WebView;

    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/activity/AuthWebVeiwActivity;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    :goto_4
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/activity/AuthWebVeiwActivity;->a:Landroid/webkit/WebView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/webkit/WebView;->removeAllViews()V

    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/activity/AuthWebVeiwActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    iput-object v1, p0, Lcom/mobile/auth/gatewayauth/activity/AuthWebVeiwActivity;->a:Landroid/webkit/WebView;

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    iput-object v1, p0, Lcom/mobile/auth/gatewayauth/activity/AuthWebVeiwActivity;->g:Lcom/mobile/auth/gatewayauth/AuthUIConfig;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
