.class public Lcn/mucang/android/core/webview/core/page/WebViewPage;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/core/ui/page/b;
.implements Lcn/mucang/android/core/webview/core/i;
.implements Lcn/mucang/android/core/webview/core/p;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/core/webview/core/page/WebViewPage$g;,
        Lcn/mucang/android/core/webview/core/page/WebViewPage$h;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WebViewPage"


# instance fields
.field private callbackDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/core/webview/core/page/h;",
            ">;"
        }
    .end annotation
.end field

.field private destroyWebView:Ljava/lang/Runnable;

.field private pageManager:Lcn/mucang/android/core/ui/page/d;

.field private pageView:Lcn/mucang/android/core/ui/page/PageView;

.field private protocol:Lcn/mucang/android/core/webview/core/page/f;

.field private protocolCallbackDataAddedListener:Lcn/mucang/android/core/webview/c$c;

.field private protocolHandler:Lcn/mucang/android/core/webview/core/j;

.field private savePageData:Lcn/mucang/android/core/webview/core/page/PageData;

.field private webView:Lcn/mucang/android/core/webview/core/MucangWebView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcn/mucang/android/core/webview/core/page/PageData;

    invoke-direct {v0}, Lcn/mucang/android/core/webview/core/page/PageData;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/core/webview/core/page/WebViewPage;->savePageData:Lcn/mucang/android/core/webview/core/page/PageData;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/core/webview/core/page/WebViewPage;->callbackDataList:Ljava/util/List;

    .line 4
    new-instance v0, Lcn/mucang/android/core/webview/core/page/WebViewPage$a;

    invoke-direct {v0, p0}, Lcn/mucang/android/core/webview/core/page/WebViewPage$a;-><init>(Lcn/mucang/android/core/webview/core/page/WebViewPage;)V

    iput-object v0, p0, Lcn/mucang/android/core/webview/core/page/WebViewPage;->destroyWebView:Ljava/lang/Runnable;

    .line 5
    new-instance v0, Lcn/mucang/android/core/webview/core/page/WebViewPage$b;

    invoke-direct {v0, p0}, Lcn/mucang/android/core/webview/core/page/WebViewPage$b;-><init>(Lcn/mucang/android/core/webview/core/page/WebViewPage;)V

    iput-object v0, p0, Lcn/mucang/android/core/webview/core/page/WebViewPage;->protocolCallbackDataAddedListener:Lcn/mucang/android/core/webview/c$c;

    .line 6
    invoke-direct {p0}, Lcn/mucang/android/core/webview/core/page/WebViewPage;->initWebView()V

    .line 7
    new-instance v0, Lcn/mucang/android/core/webview/core/page/f;

    invoke-direct {v0, p0}, Lcn/mucang/android/core/webview/core/page/f;-><init>(Lcn/mucang/android/core/webview/core/page/WebViewPage;)V

    iput-object v0, p0, Lcn/mucang/android/core/webview/core/page/WebViewPage;->protocol:Lcn/mucang/android/core/webview/core/page/f;

    .line 8
    invoke-virtual {v0, p0}, Lcn/mucang/android/core/webview/core/page/f;->p(Lcn/mucang/android/core/webview/core/i;)V

    .line 9
    invoke-direct {p0}, Lcn/mucang/android/core/webview/core/page/WebViewPage;->addWebJs()V

    .line 10
    invoke-direct {p0}, Lcn/mucang/android/core/webview/core/page/WebViewPage;->addThirdJsBridge()V

    .line 11
    invoke-static {}, Lcn/mucang/android/core/webview/c;->b()Lcn/mucang/android/core/webview/c;

    move-result-object v0

    iget-object v1, p0, Lcn/mucang/android/core/webview/core/page/WebViewPage;->protocolCallbackDataAddedListener:Lcn/mucang/android/core/webview/c$c;

    .line 12
    invoke-virtual {v0, v1}, Lcn/mucang/android/core/webview/c;->a(Lcn/mucang/android/core/webview/c$c;)V

    return-void
.end method

.method static synthetic access$000(Lcn/mucang/android/core/webview/core/page/WebViewPage;)Lcn/mucang/android/core/webview/core/MucangWebView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/core/webview/core/page/WebViewPage;->webView:Lcn/mucang/android/core/webview/core/MucangWebView;

    return-object p0
.end method

.method static synthetic access$002(Lcn/mucang/android/core/webview/core/page/WebViewPage;Lcn/mucang/android/core/webview/core/MucangWebView;)Lcn/mucang/android/core/webview/core/MucangWebView;
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/core/webview/core/page/WebViewPage;->webView:Lcn/mucang/android/core/webview/core/MucangWebView;

    return-object p1
.end method

.method static synthetic access$100(Lcn/mucang/android/core/webview/core/page/WebViewPage;)Lcn/mucang/android/core/webview/c$c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/core/webview/core/page/WebViewPage;->protocolCallbackDataAddedListener:Lcn/mucang/android/core/webview/c$c;

    return-object p0
.end method

.method static synthetic access$200(Lcn/mucang/android/core/webview/core/page/WebViewPage;)Lcn/mucang/android/core/webview/core/j;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/core/webview/core/page/WebViewPage;->protocolHandler:Lcn/mucang/android/core/webview/core/j;

    return-object p0
.end method

.method static synthetic access$202(Lcn/mucang/android/core/webview/core/page/WebViewPage;Lcn/mucang/android/core/webview/core/j;)Lcn/mucang/android/core/webview/core/j;
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/core/webview/core/page/WebViewPage;->protocolHandler:Lcn/mucang/android/core/webview/core/j;

    return-object p1
.end method

.method static synthetic access$300(Lcn/mucang/android/core/webview/core/page/WebViewPage;)Lcn/mucang/android/core/webview/core/page/f;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/core/webview/core/page/WebViewPage;->protocol:Lcn/mucang/android/core/webview/core/page/f;

    return-object p0
.end method

.method static synthetic access$400(Lcn/mucang/android/core/webview/core/page/WebViewPage;)Lcn/mucang/android/core/ui/page/PageView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/core/webview/core/page/WebViewPage;->pageView:Lcn/mucang/android/core/ui/page/PageView;

    return-object p0
.end method

.method static synthetic access$500(Lcn/mucang/android/core/webview/core/page/WebViewPage;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/core/webview/core/page/WebViewPage;->sendWebCallback()V

    return-void
.end method

.method static synthetic access$600(Lcn/mucang/android/core/webview/core/page/WebViewPage;)Lcn/mucang/android/core/webview/core/page/PageData;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/core/webview/core/page/WebViewPage;->savePageData:Lcn/mucang/android/core/webview/core/page/PageData;

    return-object p0
.end method

.method static synthetic access$700(Lcn/mucang/android/core/webview/core/page/WebViewPage;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/core/webview/core/page/WebViewPage;->destroyWebView:Ljava/lang/Runnable;

    return-object p0
.end method

.method private addThirdJsBridge()V
    .locals 3

    .line 1
    invoke-static {}, Lcn/mucang/android/core/webview/core/l;->d()Lcn/mucang/android/core/webview/core/l;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/core/webview/core/l;->b()Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lcn/mucang/android/core/utils/g;->d(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/core/webview/core/d;

    .line 4
    iget-object v2, p0, Lcn/mucang/android/core/webview/core/page/WebViewPage;->webView:Lcn/mucang/android/core/webview/core/MucangWebView;

    invoke-virtual {v2, v1}, Lcn/mucang/android/core/webview/core/MucangWebView;->f(Lcn/mucang/android/core/webview/core/d;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private addWebJs()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/webview/core/page/WebViewPage;->webView:Lcn/mucang/android/core/webview/core/MucangWebView;

    new-instance v1, Lcn/mucang/android/core/webview/core/page/WebViewPage$g;

    invoke-direct {v1, p0}, Lcn/mucang/android/core/webview/core/page/WebViewPage$g;-><init>(Lcn/mucang/android/core/webview/core/page/WebViewPage;)V

    const-string v2, "MCProtocolAndroidCallback"

    invoke-virtual {v0, v1, v2}, Lcn/mucang/android/core/webview/core/f;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/core/webview/core/page/WebViewPage;->webView:Lcn/mucang/android/core/webview/core/MucangWebView;

    new-instance v1, Lcn/mucang/android/core/webview/core/page/WebViewPage$h;

    invoke-direct {v1, p0}, Lcn/mucang/android/core/webview/core/page/WebViewPage$h;-><init>(Lcn/mucang/android/core/webview/core/page/WebViewPage;)V

    const-string v2, "MCProtocolAndroidExecute"

    invoke-virtual {v0, v1, v2}, Lcn/mucang/android/core/webview/core/f;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method private initWebView()V
    .locals 2

    .line 1
    new-instance v0, Lcn/mucang/android/core/webview/core/MucangWebView;

    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->i()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/mucang/android/core/webview/core/MucangWebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/mucang/android/core/webview/core/page/WebViewPage;->webView:Lcn/mucang/android/core/webview/core/MucangWebView;

    .line 2
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-static {}, Lcn/mucang/android/core/webview/core/page/e;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcn/mucang/android/core/webview/core/page/WebViewPage;->webView:Lcn/mucang/android/core/webview/core/MucangWebView;

    invoke-virtual {v0, p0}, Lcn/mucang/android/core/webview/core/MucangWebView;->setWebViewPageController(Lcn/mucang/android/core/webview/core/p;)V

    .line 4
    iget-object v0, p0, Lcn/mucang/android/core/webview/core/page/WebViewPage;->webView:Lcn/mucang/android/core/webview/core/MucangWebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->requestFocusFromTouch()Z

    return-void
.end method

.method private notifyWebDataChanged()V
    .locals 2

    .line 1
    invoke-static {}, Lcn/mucang/android/core/utils/u;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcn/mucang/android/core/webview/core/page/WebViewPage;->webView:Lcn/mucang/android/core/webview/core/MucangWebView;

    if-eqz v0, :cond_1

    const-string v1, "javascript:window.MCProtocolCallback()"

    .line 3
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Lcn/mucang/android/core/webview/core/page/WebViewPage$f;

    invoke-direct {v0, p0}, Lcn/mucang/android/core/webview/core/page/WebViewPage$f;-><init>(Lcn/mucang/android/core/webview/core/page/WebViewPage;)V

    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private sendWebCallback()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/webview/core/page/WebViewPage;->callbackDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/core/webview/core/page/h;

    .line 2
    iget-object v2, p0, Lcn/mucang/android/core/webview/core/page/WebViewPage;->protocol:Lcn/mucang/android/core/webview/core/page/f;

    invoke-virtual {v2, v1}, Lcn/mucang/android/core/webview/core/page/f;->d(Lcn/mucang/android/core/webview/core/page/h;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/core/webview/core/page/WebViewPage;->callbackDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method


# virtual methods
.method public addJsBridge(Lcn/mucang/android/core/webview/core/d;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/webview/core/page/WebViewPage;->webView:Lcn/mucang/android/core/webview/core/MucangWebView;

    if-nez v0, :cond_0

    const-string p1, "WebViewPage"

    const-string v0, "WebView is null.Can not add the JsBridge."

    .line 2
    invoke-static {p1, v0}, Lcn/mucang/android/core/utils/t;->a(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_0
    invoke-virtual {v0, p1}, Lcn/mucang/android/core/webview/core/MucangWebView;->f(Lcn/mucang/android/core/webview/core/d;)V

    return-void
.end method

.method public createContentView(Lcn/mucang/android/core/ui/page/PageArgument;)Landroid/view/View;
    .locals 2

    if-eqz p1, :cond_1

    .line 1
    check-cast p1, Lcn/mucang/android/core/webview/core/page/WebPageArgument;

    .line 2
    iget-object v0, p0, Lcn/mucang/android/core/webview/core/page/WebViewPage;->webView:Lcn/mucang/android/core/webview/core/MucangWebView;

    if-nez v0, :cond_0

    .line 3
    invoke-direct {p0}, Lcn/mucang/android/core/webview/core/page/WebViewPage;->initWebView()V

    .line 4
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/core/webview/core/page/WebViewPage;->protocol:Lcn/mucang/android/core/webview/core/page/f;

    invoke-virtual {p1}, Lcn/mucang/android/core/webview/core/page/WebPageArgument;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/mucang/android/core/webview/core/page/f;->o(Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcn/mucang/android/core/webview/core/page/WebViewPage;->webView:Lcn/mucang/android/core/webview/core/MucangWebView;

    invoke-virtual {p1}, Lcn/mucang/android/core/webview/core/page/WebPageArgument;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lcn/mucang/android/core/webview/core/page/WebViewPage;->webView:Lcn/mucang/android/core/webview/core/MucangWebView;

    new-instance v1, Lcn/mucang/android/core/webview/core/page/WebViewPage$c;

    invoke-direct {v1, p0, p1}, Lcn/mucang/android/core/webview/core/page/WebViewPage$c;-><init>(Lcn/mucang/android/core/webview/core/page/WebViewPage;Lcn/mucang/android/core/webview/core/page/WebPageArgument;)V

    invoke-virtual {v0, v1}, Lcn/mucang/android/core/webview/core/MucangWebView;->setOnErrorPageClickListener(Lcn/mucang/android/core/webview/core/MucangWebView$f;)V

    .line 7
    iget-object p1, p0, Lcn/mucang/android/core/webview/core/page/WebViewPage;->webView:Lcn/mucang/android/core/webview/core/MucangWebView;

    return-object p1

    .line 8
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "argument must not be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public doDestroy()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/webview/core/page/WebViewPage;->destroyWebView:Ljava/lang/Runnable;

    const-wide/16 v1, 0x7d0

    invoke-static {v0, v1, v2}, Lcn/mucang/android/core/utils/u;->d(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public doPause()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/webview/core/page/WebViewPage;->protocol:Lcn/mucang/android/core/webview/core/page/f;

    new-instance v1, Lcn/mucang/android/core/webview/core/page/h;

    const-string v2, "onPause"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcn/mucang/android/core/webview/core/page/h;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcn/mucang/android/core/webview/core/page/f;->d(Lcn/mucang/android/core/webview/core/page/h;)V

    return-void
.end method

.method public doRestoreInstanceState(Lcn/mucang/android/core/ui/page/PageState;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 1
    check-cast p1, Lcn/mucang/android/core/webview/core/page/PageData;

    .line 2
    iget-object v0, p0, Lcn/mucang/android/core/webview/core/page/WebViewPage;->callbackDataList:Ljava/util/List;

    new-instance v1, Lcn/mucang/android/core/webview/core/page/h;

    .line 3
    invoke-virtual {p1}, Lcn/mucang/android/core/webview/core/page/PageData;->getPageJsonData()Ljava/lang/String;

    move-result-object p1

    const-string v2, "onRestoreInstanceState"

    invoke-direct {v1, v2, p1}, Lcn/mucang/android/core/webview/core/page/h;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public doResume(Lcn/mucang/android/core/ui/page/PageArgument;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/webview/core/page/WebViewPage;->protocol:Lcn/mucang/android/core/webview/core/page/f;

    invoke-virtual {v0}, Lcn/mucang/android/core/webview/core/page/f;->g()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "onResume"

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcn/mucang/android/core/webview/core/page/WebViewPage;->callbackDataList:Ljava/util/List;

    new-instance v3, Lcn/mucang/android/core/webview/core/page/h;

    invoke-direct {v3, v2, v1}, Lcn/mucang/android/core/webview/core/page/h;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/core/webview/core/page/WebViewPage;->protocol:Lcn/mucang/android/core/webview/core/page/f;

    new-instance v3, Lcn/mucang/android/core/webview/core/page/h;

    invoke-direct {v3, v2, v1}, Lcn/mucang/android/core/webview/core/page/h;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcn/mucang/android/core/webview/core/page/f;->d(Lcn/mucang/android/core/webview/core/page/h;)V

    .line 4
    :goto_0
    instance-of v0, p1, Lcn/mucang/android/core/webview/core/page/WebPageArgument;

    if-eqz v0, :cond_1

    check-cast p1, Lcn/mucang/android/core/webview/core/page/WebPageArgument;

    invoke-virtual {p1}, Lcn/mucang/android/core/webview/core/page/WebPageArgument;->isHasConfig()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p0, p1}, Lcn/mucang/android/core/webview/core/page/WebViewPage;->updateTheme(Lcn/mucang/android/core/webview/core/page/WebPageArgument;)V

    :cond_1
    return-void
.end method

.method public doSaveInstanceState()Lcn/mucang/android/core/ui/page/PageState;
    .locals 4

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/webview/core/page/WebViewPage;->protocol:Lcn/mucang/android/core/webview/core/page/f;

    new-instance v1, Lcn/mucang/android/core/webview/core/page/h;

    const-string v2, "onSaveInstanceState"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcn/mucang/android/core/webview/core/page/h;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcn/mucang/android/core/webview/core/page/f;->d(Lcn/mucang/android/core/webview/core/page/h;)V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/core/webview/core/page/WebViewPage;->savePageData:Lcn/mucang/android/core/webview/core/page/PageData;

    return-object v0
.end method

.method getCurrentUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/webview/core/page/WebViewPage;->webView:Lcn/mucang/android/core/webview/core/MucangWebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method hideLoadingView()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/webview/core/page/WebViewPage;->pageView:Lcn/mucang/android/core/ui/page/PageView;

    invoke-virtual {v0}, Lcn/mucang/android/core/ui/page/PageView;->getLoadingView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v2, 0x12c

    .line 3
    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 4
    iget-object v2, p0, Lcn/mucang/android/core/webview/core/page/WebViewPage;->pageView:Lcn/mucang/android/core/ui/page/PageView;

    invoke-virtual {v2}, Lcn/mucang/android/core/ui/page/PageView;->getLoadingView()Landroid/webkit/WebView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/webkit/WebView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 5
    iget-object v2, p0, Lcn/mucang/android/core/webview/core/page/WebViewPage;->pageView:Lcn/mucang/android/core/ui/page/PageView;

    invoke-virtual {v2}, Lcn/mucang/android/core/ui/page/PageView;->getLoadingView()Landroid/webkit/WebView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 6
    new-instance v1, Lcn/mucang/android/core/webview/core/page/WebViewPage$d;

    invoke-direct {v1, p0}, Lcn/mucang/android/core/webview/core/page/WebViewPage$d;-><init>(Lcn/mucang/android/core/webview/core/page/WebViewPage;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    return-void
.end method

.method isSelf()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/webview/core/page/WebViewPage;->pageView:Lcn/mucang/android/core/ui/page/PageView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Lcn/mucang/android/core/ui/page/PageActivity;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method keyboard(ZLjava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->getContext()Landroid/app/Application;

    move-result-object p2

    const-string v0, "input_method"

    invoke-virtual {p2, v0}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/inputmethod/InputMethodManager;

    if-nez p2, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    const/4 p1, 0x2

    .line 2
    invoke-virtual {p2, v0, p1}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    goto :goto_0

    .line 3
    :cond_1
    iget-object p1, p0, Lcn/mucang/android/core/webview/core/page/WebViewPage;->webView:Lcn/mucang/android/core/webview/core/MucangWebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {p2, p1, v0}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :goto_0
    return-void
.end method

.method public needShowAlertOnOtherActivity()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onCreate(Landroid/content/Context;Lcn/mucang/android/core/ui/page/d;Lcn/mucang/android/core/ui/page/PageView;)V
    .locals 3

    .line 1
    iput-object p3, p0, Lcn/mucang/android/core/webview/core/page/WebViewPage;->pageView:Lcn/mucang/android/core/ui/page/PageView;

    .line 2
    iput-object p2, p0, Lcn/mucang/android/core/webview/core/page/WebViewPage;->pageManager:Lcn/mucang/android/core/ui/page/d;

    .line 3
    iget-object p1, p0, Lcn/mucang/android/core/webview/core/page/WebViewPage;->protocol:Lcn/mucang/android/core/webview/core/page/f;

    invoke-virtual {p1, p2}, Lcn/mucang/android/core/webview/core/page/f;->r(Lcn/mucang/android/core/ui/page/d;)V

    .line 4
    new-instance p1, Lcn/mucang/android/core/webview/core/page/h;

    const-string v0, "onCreate"

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lcn/mucang/android/core/webview/core/page/h;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-static {}, Lcn/mucang/android/core/utils/o0;->r()I

    move-result v0

    .line 6
    invoke-virtual {p2}, Lcn/mucang/android/core/ui/page/d;->t()Z

    move-result p2

    const-string v1, "}"

    if-eqz p2, :cond_0

    .line 7
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "{\"first\":true,\"statusBarHeight\":"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcn/mucang/android/core/webview/core/page/h;->b(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p3}, Lcn/mucang/android/core/ui/page/PageView;->getLoadingView()Landroid/webkit/WebView;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 9
    invoke-virtual {p3}, Lcn/mucang/android/core/ui/page/PageView;->getLoadingView()Landroid/webkit/WebView;

    move-result-object p2

    const-string p3, "file:///android_asset/core/applet_loading/loading.html"

    invoke-virtual {p2, p3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 10
    new-instance p2, Lcn/mucang/android/core/webview/core/page/WebViewPage$e;

    invoke-direct {p2, p0}, Lcn/mucang/android/core/webview/core/page/WebViewPage$e;-><init>(Lcn/mucang/android/core/webview/core/page/WebViewPage;)V

    const-wide/16 v0, 0x1388

    invoke-static {p2, v0, v1}, Lcn/mucang/android/core/utils/u;->d(Ljava/lang/Runnable;J)V

    goto :goto_0

    .line 11
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "{\"statusBarHeight\":"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcn/mucang/android/core/webview/core/page/h;->b(Ljava/lang/String;)V

    .line 12
    :goto_0
    iget-object p2, p0, Lcn/mucang/android/core/webview/core/page/WebViewPage;->protocol:Lcn/mucang/android/core/webview/core/page/f;

    invoke-virtual {p2}, Lcn/mucang/android/core/webview/core/page/f;->g()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_1

    .line 13
    iget-object p2, p0, Lcn/mucang/android/core/webview/core/page/WebViewPage;->callbackDataList:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 14
    :cond_1
    iget-object p2, p0, Lcn/mucang/android/core/webview/core/page/WebViewPage;->protocol:Lcn/mucang/android/core/webview/core/page/f;

    invoke-virtual {p2, p1}, Lcn/mucang/android/core/webview/core/page/f;->d(Lcn/mucang/android/core/webview/core/page/h;)V

    :goto_1
    return-void
.end method

.method public onProtocolDataChanged()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/core/webview/core/page/WebViewPage;->notifyWebDataChanged()V

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 1
    iget-object p1, p0, Lcn/mucang/android/core/webview/core/page/WebViewPage;->pageView:Lcn/mucang/android/core/ui/page/PageView;

    invoke-virtual {p1}, Lcn/mucang/android/core/ui/page/PageView;->getLoadingView()Landroid/webkit/WebView;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->setVisibility(I)V

    const/4 p1, 0x0

    return p1
.end method

.method public ready()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/webview/core/page/WebViewPage;->protocol:Lcn/mucang/android/core/webview/core/page/f;

    invoke-virtual {v0}, Lcn/mucang/android/core/webview/core/page/f;->k()Z

    move-result v0

    return v0
.end method

.method public sendBackEvent()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/webview/core/page/WebViewPage;->protocol:Lcn/mucang/android/core/webview/core/page/f;

    new-instance v1, Lcn/mucang/android/core/webview/core/page/h;

    const-string v2, "onBack"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcn/mucang/android/core/webview/core/page/h;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcn/mucang/android/core/webview/core/page/f;->d(Lcn/mucang/android/core/webview/core/page/h;)V

    return-void
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 0

    .line 1
    iget-object p1, p0, Lcn/mucang/android/core/webview/core/page/WebViewPage;->pageManager:Lcn/mucang/android/core/ui/page/d;

    invoke-virtual {p1, p2}, Lcn/mucang/android/core/ui/page/d;->o(Ljava/lang/String;)Lcn/mucang/android/core/webview/core/page/d;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1, p2}, Lcn/mucang/android/core/webview/core/page/d;->h(Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/webview/core/page/WebViewPage;->webView:Lcn/mucang/android/core/webview/core/MucangWebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/webkit/WebView;->reload()V

    return v1

    .line 3
    :cond_0
    invoke-static {p2}, Lcn/mucang/android/core/webview/core/page/e;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-static {}, Lcn/mucang/android/core/webview/core/page/AsteroidManager;->d()Lcn/mucang/android/core/webview/core/page/AsteroidManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcn/mucang/android/core/webview/core/page/AsteroidManager;->h(Landroid/content/Context;Ljava/lang/String;)V

    return v1

    .line 5
    :cond_1
    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p2}, Lcn/mucang/android/core/utils/u0;->g(Landroid/content/Context;Ljava/lang/String;)V

    return v1
.end method

.method updateTheme(Lcn/mucang/android/core/webview/core/page/WebPageArgument;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/webview/core/page/WebViewPage;->pageView:Lcn/mucang/android/core/ui/page/PageView;

    iget-object v1, p0, Lcn/mucang/android/core/webview/core/page/WebViewPage;->pageManager:Lcn/mucang/android/core/ui/page/d;

    iget-object v2, p0, Lcn/mucang/android/core/webview/core/page/WebViewPage;->webView:Lcn/mucang/android/core/webview/core/MucangWebView;

    invoke-static {v0, p1, v1, v2}, Lcn/mucang/android/core/webview/core/page/g;->c(Lcn/mucang/android/core/ui/page/PageView;Lcn/mucang/android/core/webview/core/page/WebPageArgument;Lcn/mucang/android/core/ui/page/d;Lcn/mucang/android/core/webview/core/MucangWebView;)V

    return-void
.end method
