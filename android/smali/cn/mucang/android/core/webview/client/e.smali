.class public Lcn/mucang/android/core/webview/client/e;
.super Landroid/webkit/WebChromeClient;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/core/webview/core/m;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcn/mucang/android/core/webview/core/p;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/core/webview/client/e;->a:Ljava/util/List;

    return-void
.end method

.method static synthetic b(Landroid/webkit/GeolocationPermissions$Callback;Ljava/lang/String;Lcn/mucang/android/core/permission/model/PermissionsResult;)V
    .locals 0

    if-eqz p2, :cond_0

    .line 1
    invoke-virtual {p2}, Lcn/mucang/android/core/permission/model/PermissionsResult;->getGrantedAll()Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    .line 2
    invoke-interface {p0, p1, p2, p2}, Landroid/webkit/GeolocationPermissions$Callback;->invoke(Ljava/lang/String;ZZ)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 3
    invoke-interface {p0, p1, p2, p2}, Landroid/webkit/GeolocationPermissions$Callback;->invoke(Ljava/lang/String;ZZ)V

    :goto_0
    return-void
.end method

.method private e(Landroid/app/Activity;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 1
    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    const-class v1, Lcn/mucang/android/core/webview/core/k;

    invoke-virtual {p1, v1}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcn/mucang/android/core/webview/client/e;->b:Lcn/mucang/android/core/webview/core/p;

    if-eqz p1, :cond_2

    .line 3
    invoke-interface {p1}, Lcn/mucang/android/core/webview/core/p;->needShowAlertOnOtherActivity()Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    :goto_0
    return v0
.end method


# virtual methods
.method public a(Lcn/mucang/android/core/webview/core/m;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/core/webview/client/e;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcn/mucang/android/core/webview/client/e;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public c(Lcn/mucang/android/core/webview/core/m;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcn/mucang/android/core/webview/client/e;->a(Lcn/mucang/android/core/webview/core/m;)V

    return-void
.end method

.method public d(Lcn/mucang/android/core/webview/core/p;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/core/webview/client/e;->b:Lcn/mucang/android/core/webview/core/p;

    return-void
.end method

.method public onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V
    .locals 7

    .line 1
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->i()Landroid/app/Activity;

    move-result-object v0

    .line 2
    invoke-direct {p0, v0}, Lcn/mucang/android/core/webview/client/e;->e(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    .line 3
    iget-object v2, p0, Lcn/mucang/android/core/webview/client/e;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/mucang/android/core/webview/core/m;

    .line 4
    instance-of v4, v3, Lcn/mucang/android/core/webview/core/n;

    if-eqz v4, :cond_0

    .line 5
    check-cast v3, Lcn/mucang/android/core/webview/core/n;

    invoke-interface {v3}, Lcn/mucang/android/core/webview/core/n;->g()Lcn/mucang/android/core/webview/HtmlExtra;

    move-result-object v1

    if-eqz v1, :cond_0

    :cond_1
    const-string v2, "android.permission.ACCESS_COARSE_LOCATION"

    const-string v3, "android.permission.ACCESS_FINE_LOCATION"

    .line 6
    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcn/mucang/android/core/utils/z;->b([Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    if-eqz v1, :cond_2

    .line 7
    invoke-virtual {v1}, Lcn/mucang/android/core/webview/HtmlExtra;->isSupportNativeRequestLocation()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 8
    new-instance v1, Lcn/mucang/android/core/webview/client/a;

    invoke-direct {v1, p2, p1}, Lcn/mucang/android/core/webview/client/a;-><init>(Landroid/webkit/GeolocationPermissions$Callback;Ljava/lang/String;)V

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcn/mucang/android/core/utils/z;->d(Landroid/app/Activity;Lf/a/a/a/n/c/a;[Ljava/lang/String;)V

    goto :goto_0

    .line 9
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\u60f3\u8981\u4f7f\u7528\u60a8\u7684\u624b\u673a\u7684\u4f4d\u7f6e\u4fe1\u606f\u3002"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x0

    new-instance v6, Lcn/mucang/android/core/webview/client/e$d;

    invoke-direct {v6, p0, p2, p1}, Lcn/mucang/android/core/webview/client/e$d;-><init>(Lcn/mucang/android/core/webview/client/e;Landroid/webkit/GeolocationPermissions$Callback;Ljava/lang/String;)V

    const-string v2, "\u6e29\u99a8\u63d0\u793a"

    const-string v3, "\u5141\u8bb8"

    const-string v4, "\u62d2\u7edd"

    .line 10
    invoke-static/range {v0 .. v6}, Lcn/mucang/android/core/webview/k/b;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcn/mucang/android/core/webview/k/b$k;)Landroid/app/AlertDialog;

    move-result-object p1

    .line 11
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    :goto_0
    return-void

    .line 12
    :cond_3
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V

    return-void
.end method

.method public onHideCustomView()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/webview/client/e;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/core/webview/core/m;

    .line 2
    invoke-interface {v1}, Lcn/mucang/android/core/webview/core/m;->o()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 2

    .line 1
    invoke-static {p1}, Lcn/mucang/android/core/utils/d;->a(Landroid/view/View;)Landroid/app/Activity;

    move-result-object v0

    .line 2
    invoke-direct {p0, v0}, Lcn/mucang/android/core/webview/client/e;->e(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    new-instance p1, Lcn/mucang/android/core/webview/client/e$a;

    invoke-direct {p1, p0, p4}, Lcn/mucang/android/core/webview/client/e$a;-><init>(Lcn/mucang/android/core/webview/client/e;Landroid/webkit/JsResult;)V

    const-string p2, "\u63d0\u793a"

    invoke-static {v0, p3, p2, p1}, Lcn/mucang/android/core/webview/k/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcn/mucang/android/core/webview/k/b$k;)Landroid/app/AlertDialog;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    const/4 p1, 0x1

    return p1

    .line 5
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebChromeClient;->onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z

    move-result p1

    return p1
.end method

.method public onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 7

    .line 1
    invoke-static {p1}, Lcn/mucang/android/core/utils/d;->a(Landroid/view/View;)Landroid/app/Activity;

    move-result-object v0

    .line 2
    invoke-direct {p0, v0}, Lcn/mucang/android/core/webview/client/e;->e(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v5, 0x0

    .line 3
    new-instance v6, Lcn/mucang/android/core/webview/client/e$b;

    invoke-direct {v6, p0, p4}, Lcn/mucang/android/core/webview/client/e$b;-><init>(Lcn/mucang/android/core/webview/client/e;Landroid/webkit/JsResult;)V

    const-string v2, ""

    const-string v3, "\u786e\u5b9a"

    const-string v4, "\u53d6\u6d88"

    move-object v1, p3

    invoke-static/range {v0 .. v6}, Lcn/mucang/android/core/webview/k/b;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcn/mucang/android/core/webview/k/b$k;)Landroid/app/AlertDialog;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    const/4 p1, 0x1

    return p1

    .line 5
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebChromeClient;->onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z

    move-result p1

    return p1
.end method

.method public onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z
    .locals 6

    .line 1
    invoke-static {p1}, Lcn/mucang/android/core/utils/d;->a(Landroid/view/View;)Landroid/app/Activity;

    move-result-object v0

    .line 2
    invoke-direct {p0, v0}, Lcn/mucang/android/core/webview/client/e;->e(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    new-instance v5, Lcn/mucang/android/core/webview/client/e$c;

    invoke-direct {v5, p0, p5}, Lcn/mucang/android/core/webview/client/e$c;-><init>(Lcn/mucang/android/core/webview/client/e;Landroid/webkit/JsPromptResult;)V

    const-string v3, "\u786e\u5b9a"

    const-string v4, "\u53d6\u6d88"

    move-object v1, p3

    move-object v2, p4

    invoke-static/range {v0 .. v5}, Lcn/mucang/android/core/webview/k/b;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/mucang/android/core/webview/k/b$k;)Landroid/app/AlertDialog;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    const/4 p1, 0x1

    return p1

    .line 5
    :cond_0
    invoke-super/range {p0 .. p5}, Landroid/webkit/WebChromeClient;->onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z

    move-result p1

    return p1
.end method

.method public onPermissionRequest(Landroid/webkit/PermissionRequest;)V
    .locals 7

    .line 1
    invoke-virtual {p1}, Landroid/webkit/PermissionRequest;->getResources()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v0, v3

    const-string v5, "android.webkit.resource.AUDIO_CAPTURE"

    .line 4
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "android.permission.RECORD_AUDIO"

    .line 5
    invoke-static {v5}, Lcn/mucang/android/core/utils/z;->a(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 6
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    const-string v5, "android.webkit.resource.VIDEO_CAPTURE"

    .line 7
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "android.permission.CAMERA"

    .line 8
    invoke-static {v4}, Lcn/mucang/android/core/utils/z;->a(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 9
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 10
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 11
    invoke-virtual {p1}, Landroid/webkit/PermissionRequest;->deny()V

    return-void

    .line 12
    :cond_3
    invoke-virtual {p1, v0}, Landroid/webkit/PermissionRequest;->grant([Ljava/lang/String;)V

    return-void
.end method

.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/webview/client/e;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/core/webview/core/m;

    .line 2
    invoke-interface {v1, p1, p2}, Lcn/mucang/android/core/webview/core/m;->n(Landroid/webkit/WebView;I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcn/mucang/android/core/webview/client/e;->a:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/core/webview/core/m;

    .line 2
    invoke-interface {v0, p2}, Lcn/mucang/android/core/webview/core/m;->l(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/webview/client/e;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/core/webview/core/m;

    .line 2
    invoke-interface {v1, p1, p2}, Lcn/mucang/android/core/webview/core/m;->b(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onShowFileChooser(Landroid/webkit/WebView;Landroid/webkit/ValueCallback;Landroid/webkit/WebChromeClient$FileChooserParams;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/WebView;",
            "Landroid/webkit/ValueCallback<",
            "[",
            "Landroid/net/Uri;",
            ">;",
            "Landroid/webkit/WebChromeClient$FileChooserParams;",
            ")Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/webview/client/e;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/core/webview/core/m;

    .line 2
    invoke-interface {v1, p1, p2, p3}, Lcn/mucang/android/core/webview/core/m;->q(Landroid/webkit/WebView;Landroid/webkit/ValueCallback;Landroid/webkit/WebChromeClient$FileChooserParams;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 3
    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebChromeClient;->onShowFileChooser(Landroid/webkit/WebView;Landroid/webkit/ValueCallback;Landroid/webkit/WebChromeClient$FileChooserParams;)Z

    move-result p1

    return p1
.end method
