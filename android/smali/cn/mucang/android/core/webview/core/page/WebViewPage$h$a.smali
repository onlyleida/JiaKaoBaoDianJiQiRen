.class Lcn/mucang/android/core/webview/core/page/WebViewPage$h$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/core/webview/core/page/WebViewPage$h;->exec(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcn/mucang/android/core/webview/core/page/WebViewPage$h;


# direct methods
.method constructor <init>(Lcn/mucang/android/core/webview/core/page/WebViewPage$h;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/core/webview/core/page/WebViewPage$h$a;->c:Lcn/mucang/android/core/webview/core/page/WebViewPage$h;

    iput-object p2, p0, Lcn/mucang/android/core/webview/core/page/WebViewPage$h$a;->a:Ljava/lang/String;

    iput-object p3, p0, Lcn/mucang/android/core/webview/core/page/WebViewPage$h$a;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/webview/core/page/WebViewPage$h$a;->c:Lcn/mucang/android/core/webview/core/page/WebViewPage$h;

    iget-object v0, v0, Lcn/mucang/android/core/webview/core/page/WebViewPage$h;->a:Lcn/mucang/android/core/webview/core/page/WebViewPage;

    invoke-static {v0}, Lcn/mucang/android/core/webview/core/page/WebViewPage;->access$000(Lcn/mucang/android/core/webview/core/page/WebViewPage;)Lcn/mucang/android/core/webview/core/MucangWebView;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/core/webview/core/page/WebViewPage$h$a;->c:Lcn/mucang/android/core/webview/core/page/WebViewPage$h;

    iget-object v0, v0, Lcn/mucang/android/core/webview/core/page/WebViewPage$h;->a:Lcn/mucang/android/core/webview/core/page/WebViewPage;

    invoke-static {v0}, Lcn/mucang/android/core/webview/core/page/WebViewPage;->access$000(Lcn/mucang/android/core/webview/core/page/WebViewPage;)Lcn/mucang/android/core/webview/core/MucangWebView;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/core/webview/core/MucangWebView;->getProtocolHandler()Lcn/mucang/android/core/webview/core/j;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    iget-object v1, p0, Lcn/mucang/android/core/webview/core/page/WebViewPage$h$a;->c:Lcn/mucang/android/core/webview/core/page/WebViewPage$h;

    iget-object v1, v1, Lcn/mucang/android/core/webview/core/page/WebViewPage$h;->a:Lcn/mucang/android/core/webview/core/page/WebViewPage;

    invoke-static {v1, v0}, Lcn/mucang/android/core/webview/core/page/WebViewPage;->access$202(Lcn/mucang/android/core/webview/core/page/WebViewPage;Lcn/mucang/android/core/webview/core/j;)Lcn/mucang/android/core/webview/core/j;

    .line 4
    iget-object v1, p0, Lcn/mucang/android/core/webview/core/page/WebViewPage$h$a;->a:Ljava/lang/String;

    iget-object v2, p0, Lcn/mucang/android/core/webview/core/page/WebViewPage$h$a;->b:Ljava/lang/String;

    iget-object v3, p0, Lcn/mucang/android/core/webview/core/page/WebViewPage$h$a;->c:Lcn/mucang/android/core/webview/core/page/WebViewPage$h;

    iget-object v3, v3, Lcn/mucang/android/core/webview/core/page/WebViewPage$h;->a:Lcn/mucang/android/core/webview/core/page/WebViewPage;

    .line 5
    invoke-static {v3}, Lcn/mucang/android/core/webview/core/page/WebViewPage;->access$000(Lcn/mucang/android/core/webview/core/page/WebViewPage;)Lcn/mucang/android/core/webview/core/MucangWebView;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 6
    invoke-virtual {v0, v1, v2, v3}, Lcn/mucang/android/core/webview/core/j;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 7
    iget-object v2, p0, Lcn/mucang/android/core/webview/core/page/WebViewPage$h$a;->c:Lcn/mucang/android/core/webview/core/page/WebViewPage$h;

    iget-object v2, v2, Lcn/mucang/android/core/webview/core/page/WebViewPage$h;->a:Lcn/mucang/android/core/webview/core/page/WebViewPage;

    invoke-static {v2}, Lcn/mucang/android/core/webview/core/page/WebViewPage;->access$300(Lcn/mucang/android/core/webview/core/page/WebViewPage;)Lcn/mucang/android/core/webview/core/page/f;

    move-result-object v2

    iget-object v3, p0, Lcn/mucang/android/core/webview/core/page/WebViewPage$h$a;->b:Ljava/lang/String;

    .line 8
    invoke-virtual {v0, v3, v1}, Lcn/mucang/android/core/webview/core/j;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 9
    invoke-virtual {v2, v0}, Lcn/mucang/android/core/webview/core/page/f;->e(Ljava/lang/String;)V

    :cond_2
    return-void
.end method
