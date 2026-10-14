.class public Lcn/mucang/android/jiakaoyi/framework/j/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a()V
    .locals 2

    .line 1
    new-instance v0, Lcn/mucang/android/core/webview/HtmlExtra$b;

    invoke-direct {v0}, Lcn/mucang/android/core/webview/HtmlExtra$b;-><init>()V

    const-string v1, "https://ping.mucang.cn/?group=huanying"

    invoke-virtual {v0, v1}, Lcn/mucang/android/core/webview/HtmlExtra$b;->J(Ljava/lang/String;)Lcn/mucang/android/core/webview/HtmlExtra$b;

    const-string v1, "\u7f51\u7edc\u68c0\u6d4b"

    .line 2
    invoke-virtual {v0, v1}, Lcn/mucang/android/core/webview/HtmlExtra$b;->I(Ljava/lang/String;)Lcn/mucang/android/core/webview/HtmlExtra$b;

    const/4 v1, 0x1

    .line 3
    invoke-virtual {v0, v1}, Lcn/mucang/android/core/webview/HtmlExtra$b;->C(Z)Lcn/mucang/android/core/webview/HtmlExtra$b;

    .line 4
    invoke-virtual {v0, v1}, Lcn/mucang/android/core/webview/HtmlExtra$b;->G(Z)Lcn/mucang/android/core/webview/HtmlExtra$b;

    .line 5
    invoke-virtual {v0, v1}, Lcn/mucang/android/core/webview/HtmlExtra$b;->z(Z)Lcn/mucang/android/core/webview/HtmlExtra$b;

    .line 6
    invoke-virtual {v0}, Lcn/mucang/android/core/webview/HtmlExtra$b;->y()Lcn/mucang/android/core/webview/HtmlExtra;

    move-result-object v0

    .line 7
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->getContext()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1, v0}, Lcn/mucang/android/core/webview/HTML5Activity;->i(Landroid/content/Context;Lcn/mucang/android/core/webview/HtmlExtra;)V

    return-void
.end method
