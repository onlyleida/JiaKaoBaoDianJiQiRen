.class public Lcom/cmic/sso/sdk/widget/a;
.super Landroid/app/Dialog;
.source "SourceFile"


# instance fields
.field private a:Landroid/webkit/WebView;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    :try_start_0
    iput-object p3, p0, Lcom/cmic/sso/sdk/widget/a;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/cmic/sso/sdk/widget/a;->b:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/cmic/sso/sdk/widget/a;)Landroid/webkit/WebView;
    .locals 0

    iget-object p0, p0, Lcom/cmic/sso/sdk/widget/a;->a:Landroid/webkit/WebView;

    return-object p0
.end method

.method private b()Landroid/view/ViewGroup;
    .locals 10

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cmic/sso/sdk/widget/a;->d:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    iget-object v2, p0, Lcom/cmic/sso/sdk/widget/a;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/mobile/auth/e/a;->a(Landroid/content/Context;)Lcom/mobile/auth/e/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mobile/auth/e/a;->a()Lcom/cmic/sso/sdk/AuthThemeConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cmic/sso/sdk/AuthThemeConfig;->getClauseLayoutResID()I

    move-result v2

    iget-object v3, p0, Lcom/cmic/sso/sdk/widget/a;->c:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "\u670d\u52a1\u6761\u6b3e"

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/cmic/sso/sdk/widget/a;->c:Ljava/lang/String;

    :goto_0
    move-object v8, v3

    if-eq v2, v1, :cond_2

    invoke-virtual {p0}, Landroid/app/Dialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    iget-object v3, p0, Lcom/cmic/sso/sdk/widget/a;->d:Landroid/widget/LinearLayout;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v4

    const v6, 0x111111

    const/4 v7, 0x0

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Lcom/mobile/auth/k/w;->a(Landroid/content/Context;Landroid/view/View;IILjava/lang/String;Landroid/view/View$OnClickListener;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v0}, Lcom/cmic/sso/sdk/AuthThemeConfig;->getClauseLayoutReturnID()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/mobile/auth/k/n;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v2, Lcom/cmic/sso/sdk/widget/a$a;

    invoke-direct {v2, p0}, Lcom/cmic/sso/sdk/widget/a$a;-><init>(Lcom/cmic/sso/sdk/widget/a;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    iget-object v0, p0, Lcom/cmic/sso/sdk/widget/a;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v4

    new-instance v9, Lcom/cmic/sso/sdk/widget/a$b;

    invoke-direct {v9, p0}, Lcom/cmic/sso/sdk/widget/a$b;-><init>(Lcom/cmic/sso/sdk/widget/a;)V

    const/4 v5, 0x0

    const v6, 0x111111

    const v7, 0x222222

    invoke-static/range {v4 .. v9}, Lcom/mobile/auth/k/w;->a(Landroid/content/Context;Landroid/view/View;IILjava/lang/String;Landroid/view/View$OnClickListener;)Landroid/widget/RelativeLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/cmic/sso/sdk/widget/a;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :goto_1
    iget-object v0, p0, Lcom/cmic/sso/sdk/widget/a;->d:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private c()V
    .locals 3

    new-instance v0, Landroid/webkit/WebView;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cmic/sso/sdk/widget/a;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowContentAccess(Z)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/cmic/sso/sdk/widget/a;->d:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/cmic/sso/sdk/widget/a;->a:Landroid/webkit/WebView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/cmic/sso/sdk/widget/a;->a:Landroid/webkit/WebView;

    const-string v1, "searchBoxJavaBridge_"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cmic/sso/sdk/widget/a;->a:Landroid/webkit/WebView;

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cmic/sso/sdk/widget/a;->a:Landroid/webkit/WebView;

    const-string v1, "accessibilityTraversal"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/cmic/sso/sdk/widget/a;->a:Landroid/webkit/WebView;

    new-instance v1, Lcom/cmic/sso/sdk/widget/a$c;

    invoke-direct {v1, p0}, Lcom/cmic/sso/sdk/widget/a$c;-><init>(Lcom/cmic/sso/sdk/widget/a;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v0, p0, Lcom/cmic/sso/sdk/widget/a;->a:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/cmic/sso/sdk/widget/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 5

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFeatureDrawableAlpha(II)V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/mobile/auth/e/a;->a(Landroid/content/Context;)Lcom/mobile/auth/e/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mobile/auth/e/a;->a()Lcom/cmic/sso/sdk/AuthThemeConfig;

    move-result-object v0

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_0

    invoke-virtual {v0}, Lcom/cmic/sso/sdk/AuthThemeConfig;->getStatusBarColor()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/high16 v4, -0x80000000

    invoke-virtual {v3, v4}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/high16 v4, 0x4000000

    invoke-virtual {v3, v4}, Landroid/view/Window;->clearFlags(I)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v0}, Lcom/cmic/sso/sdk/AuthThemeConfig;->getStatusBarColor()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/Window;->setStatusBarColor(I)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v0}, Lcom/cmic/sso/sdk/AuthThemeConfig;->getStatusBarColor()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/Window;->setNavigationBarColor(I)V

    :cond_0
    const/16 v3, 0x17

    if-lt v2, v3, :cond_2

    invoke-virtual {v0}, Lcom/cmic/sso/sdk/AuthThemeConfig;->isLightColor()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x2000

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_2
    invoke-direct {p0}, Lcom/cmic/sso/sdk/widget/a;->b()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public dismiss()V
    .locals 1

    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    iget-object v0, p0, Lcom/cmic/sso/sdk/widget/a;->a:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    :cond_0
    return-void
.end method

.method public show()V
    .locals 1

    iget-object v0, p0, Lcom/cmic/sso/sdk/widget/a;->d:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/cmic/sso/sdk/widget/a;->a()V

    :cond_0
    iget-object v0, p0, Lcom/cmic/sso/sdk/widget/a;->a:Landroid/webkit/WebView;

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/cmic/sso/sdk/widget/a;->c()V

    :cond_1
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method
