.class Lcn/mucang/android/core/webview/core/page/WebViewPage$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/core/webview/c$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/core/webview/core/page/WebViewPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/mucang/android/core/webview/core/page/WebViewPage;


# direct methods
.method constructor <init>(Lcn/mucang/android/core/webview/core/page/WebViewPage;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/core/webview/core/page/WebViewPage$b;->a:Lcn/mucang/android/core/webview/core/page/WebViewPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/webview/core/page/WebViewPage$b;->a:Lcn/mucang/android/core/webview/core/page/WebViewPage;

    invoke-static {v0}, Lcn/mucang/android/core/webview/core/page/WebViewPage;->access$200(Lcn/mucang/android/core/webview/core/page/WebViewPage;)Lcn/mucang/android/core/webview/core/j;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/mucang/android/core/webview/core/page/WebViewPage$b;->a:Lcn/mucang/android/core/webview/core/page/WebViewPage;

    invoke-static {v0}, Lcn/mucang/android/core/webview/core/page/WebViewPage;->access$000(Lcn/mucang/android/core/webview/core/page/WebViewPage;)Lcn/mucang/android/core/webview/core/MucangWebView;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    if-eq p3, v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 2
    iget-object p3, p0, Lcn/mucang/android/core/webview/core/page/WebViewPage$b;->a:Lcn/mucang/android/core/webview/core/page/WebViewPage;

    invoke-static {p3}, Lcn/mucang/android/core/webview/core/page/WebViewPage;->access$300(Lcn/mucang/android/core/webview/core/page/WebViewPage;)Lcn/mucang/android/core/webview/core/page/f;

    move-result-object p3

    iget-object v0, p0, Lcn/mucang/android/core/webview/core/page/WebViewPage$b;->a:Lcn/mucang/android/core/webview/core/page/WebViewPage;

    .line 3
    invoke-static {v0}, Lcn/mucang/android/core/webview/core/page/WebViewPage;->access$200(Lcn/mucang/android/core/webview/core/page/WebViewPage;)Lcn/mucang/android/core/webview/core/j;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcn/mucang/android/core/webview/core/j;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-virtual {p3, v0}, Lcn/mucang/android/core/webview/core/page/f;->e(Ljava/lang/String;)V

    .line 5
    :cond_1
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "--"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "d"

    invoke-static {p2, p1}, Lcn/mucang/android/core/utils/t;->a(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method
