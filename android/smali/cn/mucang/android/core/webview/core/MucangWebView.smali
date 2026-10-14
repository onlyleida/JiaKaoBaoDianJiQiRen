.class public Lcn/mucang/android/core/webview/core/MucangWebView;
.super Lcn/mucang/android/core/webview/core/f;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/core/webview/core/i;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/core/webview/core/MucangWebView$d;,
        Lcn/mucang/android/core/webview/core/MucangWebView$e;,
        Lcn/mucang/android/core/webview/core/MucangWebView$f;
    }
.end annotation


# instance fields
.field private a:Lcn/mucang/android/core/webview/core/j;

.field private b:Lcn/mucang/android/core/webview/core/h;

.field private c:Ljava/util/concurrent/ExecutorService;

.field private d:Lcn/mucang/android/core/webview/client/f;

.field private e:Lcn/mucang/android/core/webview/client/e;

.field private f:Lcn/mucang/android/core/webview/core/MucangWebView$f;

.field private g:Landroid/webkit/DownloadListener;

.field private h:Lcn/mucang/android/core/webview/core/d;

.field private i:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/android/core/webview/core/f;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-direct {p0}, Lcn/mucang/android/core/webview/core/MucangWebView;->o()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Lcn/mucang/android/core/webview/core/f;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    invoke-direct {p0}, Lcn/mucang/android/core/webview/core/MucangWebView;->o()V

    return-void
.end method

.method static synthetic a(Lcn/mucang/android/core/webview/core/MucangWebView;)Lcn/mucang/android/core/webview/core/MucangWebView$f;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/core/webview/core/MucangWebView;->f:Lcn/mucang/android/core/webview/core/MucangWebView$f;

    return-object p0
.end method

.method static synthetic b(Lcn/mucang/android/core/webview/core/MucangWebView;)Lcn/mucang/android/core/webview/core/h;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/core/webview/core/MucangWebView;->b:Lcn/mucang/android/core/webview/core/h;

    return-object p0
.end method

.method static synthetic c(Lcn/mucang/android/core/webview/core/MucangWebView;)Landroid/webkit/DownloadListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/core/webview/core/MucangWebView;->g:Landroid/webkit/DownloadListener;

    return-object p0
.end method

.method static synthetic d(Lcn/mucang/android/core/webview/core/MucangWebView;)Ljava/util/concurrent/ExecutorService;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/core/webview/core/MucangWebView;->c:Ljava/util/concurrent/ExecutorService;

    return-object p0
.end method

.method static synthetic e(Lcn/mucang/android/core/webview/core/MucangWebView;)Lcn/mucang/android/core/webview/core/j;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/core/webview/core/MucangWebView;->a:Lcn/mucang/android/core/webview/core/j;

    return-object p0
.end method

.method private g()V
    .locals 2

    .line 1
    new-instance v0, Lcn/mucang/android/core/webview/core/d;

    const-string v1, "core.luban.mucang.cn"

    invoke-direct {v0, v1, p0}, Lcn/mucang/android/core/webview/core/d;-><init>(Ljava/lang/String;Lcn/mucang/android/core/webview/core/MucangWebView;)V

    iput-object v0, p0, Lcn/mucang/android/core/webview/core/MucangWebView;->h:Lcn/mucang/android/core/webview/core/d;

    .line 2
    new-instance v1, Lcn/mucang/android/core/webview/protocol/bridge/WebJsBridge;

    invoke-direct {v1, p0, v0}, Lcn/mucang/android/core/webview/protocol/bridge/WebJsBridge;-><init>(Lcn/mucang/android/core/webview/core/MucangWebView;Lcn/mucang/android/core/webview/core/d;)V

    .line 3
    new-instance v0, Lcn/mucang/android/core/webview/protocol/bridge/SystemJsBridge;

    iget-object v1, p0, Lcn/mucang/android/core/webview/core/MucangWebView;->h:Lcn/mucang/android/core/webview/core/d;

    invoke-direct {v0, p0, v1}, Lcn/mucang/android/core/webview/protocol/bridge/SystemJsBridge;-><init>(Lcn/mucang/android/core/webview/core/MucangWebView;Lcn/mucang/android/core/webview/core/d;)V

    .line 4
    new-instance v0, Lcn/mucang/android/core/webview/protocol/bridge/HttpJsBridge;

    iget-object v1, p0, Lcn/mucang/android/core/webview/core/MucangWebView;->h:Lcn/mucang/android/core/webview/core/d;

    invoke-direct {v0, p0, v1}, Lcn/mucang/android/core/webview/protocol/bridge/HttpJsBridge;-><init>(Lcn/mucang/android/core/webview/core/MucangWebView;Lcn/mucang/android/core/webview/core/d;)V

    .line 5
    new-instance v0, Lcn/mucang/android/core/webview/protocol/bridge/NewHttpJsBridge;

    iget-object v1, p0, Lcn/mucang/android/core/webview/core/MucangWebView;->h:Lcn/mucang/android/core/webview/core/d;

    invoke-direct {v0, p0, v1}, Lcn/mucang/android/core/webview/protocol/bridge/NewHttpJsBridge;-><init>(Lcn/mucang/android/core/webview/core/MucangWebView;Lcn/mucang/android/core/webview/core/d;)V

    .line 6
    new-instance v0, Lcn/mucang/android/core/webview/protocol/bridge/NativeJsBridge;

    iget-object v1, p0, Lcn/mucang/android/core/webview/core/MucangWebView;->h:Lcn/mucang/android/core/webview/core/d;

    invoke-direct {v0, p0, v1}, Lcn/mucang/android/core/webview/protocol/bridge/NativeJsBridge;-><init>(Lcn/mucang/android/core/webview/core/MucangWebView;Lcn/mucang/android/core/webview/core/d;)V

    .line 7
    new-instance v0, Lcn/mucang/android/core/webview/protocol/bridge/ClueJsBridge;

    iget-object v1, p0, Lcn/mucang/android/core/webview/core/MucangWebView;->h:Lcn/mucang/android/core/webview/core/d;

    invoke-direct {v0, p0, v1}, Lcn/mucang/android/core/webview/protocol/bridge/ClueJsBridge;-><init>(Lcn/mucang/android/core/webview/core/MucangWebView;Lcn/mucang/android/core/webview/core/d;)V

    .line 8
    iget-object v0, p0, Lcn/mucang/android/core/webview/core/MucangWebView;->h:Lcn/mucang/android/core/webview/core/d;

    invoke-direct {p0, v0}, Lcn/mucang/android/core/webview/core/MucangWebView;->i(Lcn/mucang/android/core/webview/core/d;)V

    .line 9
    invoke-direct {p0}, Lcn/mucang/android/core/webview/core/MucangWebView;->j()V

    return-void
.end method

.method private i(Lcn/mucang/android/core/webview/core/d;)V
    .locals 7

    .line 1
    invoke-static {}, Lcn/mucang/android/core/webview/core/l;->d()Lcn/mucang/android/core/webview/core/l;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/core/webview/core/l;->f()Ljava/util/List;

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

    check-cast v1, Ljava/lang/Class;

    const/4 v2, 0x2

    :try_start_0
    new-array v3, v2, [Ljava/lang/Class;

    .line 4
    const-class v4, Lcn/mucang/android/core/webview/core/MucangWebView;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-class v4, Lcn/mucang/android/core/webview/core/d;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v5

    aput-object p1, v2, v6

    .line 5
    invoke-virtual {v3, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 6
    :catch_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addThirdCoreJsBridge error, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " newInstance fail."

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MucangWebView"

    invoke-static {v2, v1}, Lcn/mucang/android/core/utils/t;->m(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 7
    :cond_0
    invoke-static {}, Lcn/mucang/android/core/webview/core/l;->d()Lcn/mucang/android/core/webview/core/l;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/core/webview/core/l;->e()Ljava/util/Map;

    move-result-object v0

    .line 8
    invoke-static {v0}, Lcn/mucang/android/core/utils/g;->e(Ljava/util/Map;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 9
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 10
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/core/webview/core/d$a;

    invoke-virtual {p1, v2, v1}, Lcn/mucang/android/core/webview/core/d;->a(Ljava/lang/String;Lcn/mucang/android/core/webview/core/d$a;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method private j()V
    .locals 2

    .line 1
    invoke-static {}, Lcn/mucang/android/core/webview/core/l;->d()Lcn/mucang/android/core/webview/core/l;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/core/webview/core/l;->c()Ljava/util/List;

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
    invoke-virtual {p0, v1}, Lcn/mucang/android/core/webview/core/MucangWebView;->f(Lcn/mucang/android/core/webview/core/d;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private k()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/core/webview/core/MucangWebView;->q()V

    const-string v0, "mucang"

    .line 2
    invoke-virtual {p0, p0, v0}, Lcn/mucang/android/core/webview/core/f;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mcwebcore"

    .line 3
    invoke-virtual {p0, p0, v0}, Lcn/mucang/android/core/webview/core/f;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    new-instance v0, Lcn/mucang/android/core/webview/core/MucangWebView$e;

    invoke-direct {v0, p0}, Lcn/mucang/android/core/webview/core/MucangWebView$e;-><init>(Lcn/mucang/android/core/webview/core/MucangWebView;)V

    const-string v1, "mcAndroidWebview1"

    invoke-virtual {p0, v0, v1}, Lcn/mucang/android/core/webview/core/f;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    new-instance v0, Lcn/mucang/android/core/webview/core/MucangWebView$d;

    invoke-direct {v0, p0}, Lcn/mucang/android/core/webview/core/MucangWebView$d;-><init>(Lcn/mucang/android/core/webview/core/MucangWebView;)V

    const-string v1, "mcAndroidWebview2"

    invoke-virtual {p0, v0, v1}, Lcn/mucang/android/core/webview/core/f;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method private n()V
    .locals 1

    .line 1
    new-instance v0, Lcn/mucang/android/core/webview/core/MucangWebView$b;

    invoke-direct {v0, p0}, Lcn/mucang/android/core/webview/core/MucangWebView$b;-><init>(Lcn/mucang/android/core/webview/core/MucangWebView;)V

    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method private o()V
    .locals 3

    .line 1
    new-instance v0, Lcn/mucang/android/ui/framework/fetcher/ThreadPool$a;

    const-string v1, "webview"

    invoke-direct {v0, v1}, Lcn/mucang/android/ui/framework/fetcher/ThreadPool$a;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/core/webview/core/MucangWebView;->c:Ljava/util/concurrent/ExecutorService;

    .line 2
    invoke-direct {p0}, Lcn/mucang/android/core/webview/core/MucangWebView;->k()V

    .line 3
    new-instance v0, Lcn/mucang/android/core/webview/core/j;

    invoke-direct {v0}, Lcn/mucang/android/core/webview/core/j;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/core/webview/core/MucangWebView;->a:Lcn/mucang/android/core/webview/core/j;

    .line 4
    invoke-virtual {v0, p0}, Lcn/mucang/android/core/webview/core/j;->l(Lcn/mucang/android/core/webview/core/i;)V

    .line 5
    new-instance v0, Lcn/mucang/android/core/webview/core/h;

    invoke-direct {v0, p0}, Lcn/mucang/android/core/webview/core/h;-><init>(Lcn/mucang/android/core/webview/core/MucangWebView;)V

    iput-object v0, p0, Lcn/mucang/android/core/webview/core/MucangWebView;->b:Lcn/mucang/android/core/webview/core/h;

    .line 6
    new-instance v0, Lcn/mucang/android/core/webview/client/f;

    iget-object v1, p0, Lcn/mucang/android/core/webview/core/MucangWebView;->a:Lcn/mucang/android/core/webview/core/j;

    iget-object v2, p0, Lcn/mucang/android/core/webview/core/MucangWebView;->b:Lcn/mucang/android/core/webview/core/h;

    invoke-direct {v0, v1, v2}, Lcn/mucang/android/core/webview/client/f;-><init>(Lcn/mucang/android/core/webview/core/j;Lcn/mucang/android/core/webview/core/h;)V

    iput-object v0, p0, Lcn/mucang/android/core/webview/core/MucangWebView;->d:Lcn/mucang/android/core/webview/client/f;

    .line 7
    new-instance v0, Lcn/mucang/android/core/webview/client/e;

    invoke-direct {v0}, Lcn/mucang/android/core/webview/client/e;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/core/webview/core/MucangWebView;->e:Lcn/mucang/android/core/webview/client/e;

    .line 8
    iget-object v0, p0, Lcn/mucang/android/core/webview/core/MucangWebView;->d:Lcn/mucang/android/core/webview/client/f;

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 9
    iget-object v0, p0, Lcn/mucang/android/core/webview/core/MucangWebView;->e:Lcn/mucang/android/core/webview/client/e;

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 10
    invoke-virtual {p0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    .line 11
    new-instance v1, Lcn/mucang/android/core/webview/core/MucangWebView$a;

    invoke-direct {v1, p0, v0}, Lcn/mucang/android/core/webview/core/MucangWebView$a;-><init>(Lcn/mucang/android/core/webview/core/MucangWebView;I)V

    invoke-virtual {p0, v1}, Landroid/webkit/WebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 12
    invoke-direct {p0}, Lcn/mucang/android/core/webview/core/MucangWebView;->g()V

    .line 13
    new-instance v0, Lcn/mucang/android/core/webview/protocol/bridge/http/HttpFeatureController;

    iget-object v1, p0, Lcn/mucang/android/core/webview/core/MucangWebView;->h:Lcn/mucang/android/core/webview/core/d;

    iget-object v2, p0, Lcn/mucang/android/core/webview/core/MucangWebView;->a:Lcn/mucang/android/core/webview/core/j;

    invoke-direct {v0, v1, v2}, Lcn/mucang/android/core/webview/protocol/bridge/http/HttpFeatureController;-><init>(Lcn/mucang/android/core/webview/core/d;Lcn/mucang/android/core/webview/core/j;)V

    invoke-virtual {p0, v0}, Lcn/mucang/android/core/webview/core/MucangWebView;->l(Lcn/mucang/android/core/webview/core/m;)V

    .line 14
    invoke-static {}, Lcn/mucang/android/core/webview/core/e;->a()Lcn/mucang/android/core/webview/core/e;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/mucang/android/core/webview/core/e;->b(Ljava/lang/String;)V

    return-void
.end method

.method private q()V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 2
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    .line 3
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    .line 4
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setGeolocationEnabled(Z)V

    .line 5
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->getContext()Landroid/app/Application;

    move-result-object v2

    const-string v3, "cache"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/Application;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setAppCachePath(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 7
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 8
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 9
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 10
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/16 v2, 0x64

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setTextZoom(I)V

    .line 11
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-static {}, Lcn/mucang/android/core/utils/u0;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 12
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    .line 13
    :try_start_0
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "\u9ed8\u8ba4\u66ff\u6362"

    .line 14
    invoke-static {v1, v0}, Lcn/mucang/android/core/utils/t;->c(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 15
    :goto_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 16
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    .line 17
    :cond_0
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V

    .line 18
    new-instance v0, Lcn/mucang/android/core/webview/core/MucangWebView$c;

    invoke-direct {v0, p0}, Lcn/mucang/android/core/webview/core/MucangWebView$c;-><init>(Lcn/mucang/android/core/webview/core/MucangWebView;)V

    invoke-super {p0, v0}, Landroid/webkit/WebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    .line 19
    invoke-static {p0}, Lcn/mucang/android/core/utils/u0;->e(Landroid/webkit/WebView;)Landroid/webkit/WebView;

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcn/mucang/android/core/webview/core/MucangWebView;->c:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 2
    invoke-virtual {p0}, Landroid/webkit/WebView;->removeAllViews()V

    const-string v0, "webviewEvent"

    const-string v1, "onDestroy"

    .line 3
    invoke-virtual {p0, v0, v1}, Lcn/mucang/android/core/webview/core/MucangWebView;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-static {}, Lcn/mucang/android/core/webview/core/l;->d()Lcn/mucang/android/core/webview/core/l;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/core/webview/core/l;->g()V

    .line 5
    invoke-super {p0}, Landroid/webkit/WebView;->destroy()V

    .line 6
    invoke-static {}, Lcn/mucang/android/core/webview/core/e;->a()Lcn/mucang/android/core/webview/core/e;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/mucang/android/core/webview/core/e;->c(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "e"

    .line 7
    invoke-static {v1, v0}, Lcn/mucang/android/core/utils/t;->c(Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public f(Lcn/mucang/android/core/webview/core/d;)V
    .locals 1

    .line 1
    invoke-virtual {p1, p0}, Lcn/mucang/android/core/webview/core/d;->b(Lcn/mucang/android/core/webview/core/MucangWebView;)V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/core/webview/core/MucangWebView;->a:Lcn/mucang/android/core/webview/core/j;

    invoke-virtual {v0, p1}, Lcn/mucang/android/core/webview/core/j;->a(Lcn/mucang/android/core/webview/core/d;)V

    return-void
.end method

.method public getProtocolContext()Lcn/mucang/android/core/webview/core/h;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/webview/core/MucangWebView;->b:Lcn/mucang/android/core/webview/core/h;

    return-object v0
.end method

.method public getProtocolHandler()Lcn/mucang/android/core/webview/core/j;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/webview/core/MucangWebView;->a:Lcn/mucang/android/core/webview/core/j;

    return-object v0
.end method

.method public h(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/webview/core/MucangWebView;->c:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public l(Lcn/mucang/android/core/webview/core/m;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/webview/core/MucangWebView;->d:Lcn/mucang/android/core/webview/client/f;

    invoke-virtual {v0, p1}, Lcn/mucang/android/core/webview/client/f;->a(Lcn/mucang/android/core/webview/core/m;)V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/core/webview/core/MucangWebView;->e:Lcn/mucang/android/core/webview/client/e;

    invoke-virtual {v0, p1}, Lcn/mucang/android/core/webview/client/e;->a(Lcn/mucang/android/core/webview/core/m;)V

    return-void
.end method

.method m(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/webview/core/MucangWebView;->h:Lcn/mucang/android/core/webview/core/d;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p2, p2}, Lcn/mucang/android/core/webview/core/d;->j(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcn/mucang/android/core/webview/core/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/webkit/WebView;->onPause()V

    const-string v0, "webviewEvent"

    const-string v1, "onPause"

    .line 2
    invoke-virtual {p0, v0, v1}, Lcn/mucang/android/core/webview/core/MucangWebView;->m(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "hide"

    const-string v1, ""

    .line 3
    invoke-virtual {p0, v0, v1}, Lcn/mucang/android/core/webview/core/MucangWebView;->m(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onProtocolDataChanged()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/core/webview/core/MucangWebView;->n()V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/webkit/WebView;->onResume()V

    const-string v0, "webviewEvent"

    const-string v1, "onResume"

    .line 2
    invoke-virtual {p0, v0, v1}, Lcn/mucang/android/core/webview/core/MucangWebView;->m(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "show"

    const-string v1, ""

    .line 3
    invoke-virtual {p0, v0, v1}, Lcn/mucang/android/core/webview/core/MucangWebView;->m(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public p()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/core/webview/core/MucangWebView;->i:Z

    return v0
.end method

.method public setDownloadListener(Landroid/webkit/DownloadListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/core/webview/core/MucangWebView;->g:Landroid/webkit/DownloadListener;

    return-void
.end method

.method public setInterceptClose(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/mucang/android/core/webview/core/MucangWebView;->i:Z

    return-void
.end method

.method public setLoadUrlForInject(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public setOnErrorPageClickListener(Lcn/mucang/android/core/webview/core/MucangWebView$f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/core/webview/core/MucangWebView;->f:Lcn/mucang/android/core/webview/core/MucangWebView$f;

    return-void
.end method

.method public setWebViewController(Lcn/mucang/android/core/webview/core/m;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/webview/core/MucangWebView;->d:Lcn/mucang/android/core/webview/client/f;

    invoke-virtual {v0, p1}, Lcn/mucang/android/core/webview/client/f;->d(Lcn/mucang/android/core/webview/core/m;)V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/core/webview/core/MucangWebView;->e:Lcn/mucang/android/core/webview/client/e;

    invoke-virtual {v0, p1}, Lcn/mucang/android/core/webview/client/e;->c(Lcn/mucang/android/core/webview/core/m;)V

    return-void
.end method

.method public setWebViewPageController(Lcn/mucang/android/core/webview/core/p;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/webview/core/MucangWebView;->d:Lcn/mucang/android/core/webview/client/f;

    invoke-virtual {v0, p1}, Lcn/mucang/android/core/webview/client/f;->e(Lcn/mucang/android/core/webview/core/p;)V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/core/webview/core/MucangWebView;->e:Lcn/mucang/android/core/webview/client/e;

    invoke-virtual {v0, p1}, Lcn/mucang/android/core/webview/client/e;->d(Lcn/mucang/android/core/webview/core/p;)V

    return-void
.end method
