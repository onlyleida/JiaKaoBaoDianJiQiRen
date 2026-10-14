.class public Lcom/unity3d/splash/services/core/webview/a;
.super Landroid/webkit/WebView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/splash/services/core/webview/a$a;
    }
.end annotation


# static fields
.field private static a:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 8

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    const/4 v1, 0x1

    const/16 v2, 0x10

    if-lt v0, v2, :cond_0

    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setAllowFileAccessFromFileURLs(Z)V

    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    :cond_0
    const/16 v2, 0x13

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-lt v0, v2, :cond_1

    :try_start_0
    const-class v2, Landroid/webkit/WebView;

    const-string v5, "evaluateJavascript"

    new-array v6, v3, [Ljava/lang/Class;

    const-class v7, Ljava/lang/String;

    aput-object v7, v6, v4

    const-class v7, Landroid/webkit/ValueCallback;

    aput-object v7, v6, v1

    invoke-virtual {v2, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/unity3d/splash/services/core/webview/a;->a:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v5, "Method evaluateJavascript not found"

    invoke-static {v5, v2}, Lcom/unity3d/splash/services/core/log/DeviceLog;->f(Ljava/lang/String;Ljava/lang/Exception;)V

    const/4 v2, 0x0

    sput-object v2, Lcom/unity3d/splash/services/core/webview/a;->a:Ljava/lang/reflect/Method;

    :cond_1
    :goto_0
    invoke-virtual {p1, v4}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    invoke-virtual {p1, v4}, Landroid/webkit/WebSettings;->setBlockNetworkImage(Z)V

    invoke-virtual {p1, v4}, Landroid/webkit/WebSettings;->setBlockNetworkLoads(Z)V

    invoke-virtual {p1, v4}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    invoke-virtual {p1, v3}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    invoke-virtual {p1, v4}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    const/16 v2, 0xb

    if-lt v0, v2, :cond_2

    invoke-virtual {p1, v4}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    :cond_2
    invoke-virtual {p1, v4}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    if-lt v0, v2, :cond_3

    invoke-virtual {p1, v4}, Landroid/webkit/WebSettings;->setEnableSmoothTransition(Z)V

    :cond_3
    invoke-virtual {p1, v4}, Landroid/webkit/WebSettings;->setGeolocationEnabled(Z)V

    invoke-virtual {p1, v4}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    invoke-virtual {p1, v4}, Landroid/webkit/WebSettings;->setLightTouchEnabled(Z)V

    invoke-virtual {p1, v4}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setLoadsImagesAutomatically(Z)V

    const/16 v2, 0x11

    if-lt v0, v2, :cond_4

    invoke-virtual {p1, v4}, Landroid/webkit/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V

    :cond_4
    const/16 v2, 0x15

    if-lt v0, v2, :cond_5

    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    :cond_5
    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setNeedInitialFocus(Z)V

    sget-object v0, Landroid/webkit/WebSettings$PluginState;->OFF:Landroid/webkit/WebSettings$PluginState;

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setPluginState(Landroid/webkit/WebSettings$PluginState;)V

    sget-object v0, Landroid/webkit/WebSettings$RenderPriority;->NORMAL:Landroid/webkit/WebSettings$RenderPriority;

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setRenderPriority(Landroid/webkit/WebSettings$RenderPriority;)V

    invoke-virtual {p1, v4}, Landroid/webkit/WebSettings;->setSaveFormData(Z)V

    invoke-virtual {p1, v4}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    invoke-virtual {p1, v4}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    invoke-virtual {p1, v4}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    invoke-virtual {p0, v4}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    invoke-virtual {p0, v4}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    invoke-virtual {p0, v4}, Landroid/webkit/WebView;->setInitialScale(I)V

    invoke-virtual {p0, v4}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    new-instance p1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {p1, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-static {p0, p1}, Lcom/unity3d/splash/services/c/a/c;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, v4}, Landroid/webkit/WebView;->setBackgroundResource(I)V

    new-instance p1, Lcom/unity3d/splash/services/core/webview/bridge/d;

    invoke-direct {p1}, Lcom/unity3d/splash/services/core/webview/bridge/d;-><init>()V

    const-string v0, "webviewbridge"

    invoke-virtual {p0, p1, v0}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a()Ljava/lang/reflect/Method;
    .locals 1

    sget-object v0, Lcom/unity3d/splash/services/core/webview/a;->a:Ljava/lang/reflect/Method;

    return-object v0
.end method


# virtual methods
.method public b(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/unity3d/splash/services/core/webview/a$a;

    invoke-direct {v0, p0, p1, p0}, Lcom/unity3d/splash/services/core/webview/a$a;-><init>(Lcom/unity3d/splash/services/core/webview/a;Ljava/lang/String;Landroid/webkit/WebView;)V

    invoke-static {v0}, Lcom/unity3d/splash/services/c/a/b;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public loadUrl(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Loading url: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/splash/services/core/log/DeviceLog;->c(Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method
