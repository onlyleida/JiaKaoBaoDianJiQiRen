.class public Lcn/mucang/android/core/utils/u0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static synthetic a(Landroid/webkit/WebView;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcn/mucang/android/core/utils/u0;->b(Landroid/webkit/WebView;)V

    return-void
.end method

.method private static b(Landroid/webkit/WebView;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcn/mucang/android/core/utils/MiscUtils;->e(Landroid/webkit/WebView;)V

    return-void
.end method

.method public static c(Landroid/webkit/WebView;)V
    .locals 1

    .line 1
    invoke-static {}, Lcn/mucang/android/core/utils/u;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p0}, Lcn/mucang/android/core/utils/u0;->b(Landroid/webkit/WebView;)V

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Lcn/mucang/android/core/utils/u0$a;

    invoke-direct {v0, p0}, Lcn/mucang/android/core/utils/u0$a;-><init>(Landroid/webkit/WebView;)V

    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public static d()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcn/mucang/android/core/utils/MiscUtils;->h()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static e(Landroid/webkit/WebView;)Landroid/webkit/WebView;
    .locals 0

    .line 1
    invoke-static {p0}, Lcn/mucang/android/core/utils/MiscUtils;->l(Landroid/webkit/WebView;)Landroid/webkit/WebView;

    move-result-object p0

    return-object p0
.end method

.method public static f(Landroid/content/Context;Lcn/mucang/android/core/webview/HtmlExtra;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcn/mucang/android/core/webview/HTML5Activity;->i(Landroid/content/Context;Lcn/mucang/android/core/webview/HtmlExtra;)V

    return-void
.end method

.method public static g(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Lcn/mucang/android/core/webview/f;

    invoke-direct {v0, p1}, Lcn/mucang/android/core/webview/f;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcn/mucang/android/core/webview/f;->a()Lcn/mucang/android/core/webview/HtmlExtra$b;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Lcn/mucang/android/core/webview/HtmlExtra$b;->y()Lcn/mucang/android/core/webview/HtmlExtra;

    move-result-object p1

    invoke-static {p0, p1}, Lcn/mucang/android/core/webview/HTML5Activity;->i(Landroid/content/Context;Lcn/mucang/android/core/webview/HtmlExtra;)V

    return-void
.end method

.method public static h(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Lcn/mucang/android/core/webview/f;

    invoke-direct {v0, p1}, Lcn/mucang/android/core/webview/f;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcn/mucang/android/core/webview/f;->a()Lcn/mucang/android/core/webview/HtmlExtra$b;

    move-result-object p1

    .line 2
    invoke-virtual {p1, p2}, Lcn/mucang/android/core/webview/HtmlExtra$b;->I(Ljava/lang/String;)Lcn/mucang/android/core/webview/HtmlExtra$b;

    .line 3
    invoke-virtual {p1}, Lcn/mucang/android/core/webview/HtmlExtra$b;->y()Lcn/mucang/android/core/webview/HtmlExtra;

    move-result-object p1

    invoke-static {p0, p1}, Lcn/mucang/android/core/webview/HTML5Activity;->i(Landroid/content/Context;Lcn/mucang/android/core/webview/HtmlExtra;)V

    return-void
.end method
