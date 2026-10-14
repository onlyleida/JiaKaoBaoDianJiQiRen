.class Lcn/mucang/android/core/webview/core/MucangWebView$e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/core/webview/core/MucangWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "e"
.end annotation


# instance fields
.field final synthetic a:Lcn/mucang/android/core/webview/core/MucangWebView;


# direct methods
.method constructor <init>(Lcn/mucang/android/core/webview/core/MucangWebView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/core/webview/core/MucangWebView$e;->a:Lcn/mucang/android/core/webview/core/MucangWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/webview/core/MucangWebView$e;->a:Lcn/mucang/android/core/webview/core/MucangWebView;

    invoke-static {v0}, Lcn/mucang/android/core/webview/core/MucangWebView;->e(Lcn/mucang/android/core/webview/core/MucangWebView;)Lcn/mucang/android/core/webview/core/j;

    move-result-object v0

    iget-object v1, p0, Lcn/mucang/android/core/webview/core/MucangWebView$e;->a:Lcn/mucang/android/core/webview/core/MucangWebView;

    invoke-static {v1}, Lcn/mucang/android/core/webview/core/MucangWebView;->b(Lcn/mucang/android/core/webview/core/MucangWebView;)Lcn/mucang/android/core/webview/core/h;

    move-result-object v1

    invoke-virtual {v0, p1, v1, p2}, Lcn/mucang/android/core/webview/core/j;->i(Ljava/lang/String;Lcn/mucang/android/core/webview/core/h;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public synthetic b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcn/mucang/android/core/webview/core/MucangWebView$e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getMucangWebViewData(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public getMucangWebViewData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "url : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "--callback :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MucangWebView"

    invoke-static {v1, v0}, Lcn/mucang/android/core/utils/t;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {p1}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/core/webview/core/MucangWebView$e;->a:Lcn/mucang/android/core/webview/core/MucangWebView;

    invoke-static {v0}, Lcn/mucang/android/core/webview/core/MucangWebView;->d(Lcn/mucang/android/core/webview/core/MucangWebView;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcn/mucang/android/core/webview/core/a;

    invoke-direct {v1, p0, p1, p2}, Lcn/mucang/android/core/webview/core/a;-><init>(Lcn/mucang/android/core/webview/core/MucangWebView$e;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    return-object p1

    :cond_1
    :goto_0
    const-string p1, ""

    return-object p1
.end method
