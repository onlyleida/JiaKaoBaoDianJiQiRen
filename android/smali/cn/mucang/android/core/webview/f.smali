.class public Lcn/mucang/android/core/webview/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcn/mucang/android/core/webview/f;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Lcn/mucang/android/core/webview/HtmlExtra$b;
    .locals 6

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/webview/f;->a:Ljava/lang/String;

    invoke-static {v0}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcn/mucang/android/core/webview/HtmlExtra$b;

    invoke-direct {v0}, Lcn/mucang/android/core/webview/HtmlExtra$b;-><init>()V

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Lcn/mucang/android/core/webview/HtmlExtra$b;

    invoke-direct {v0}, Lcn/mucang/android/core/webview/HtmlExtra$b;-><init>()V

    iget-object v1, p0, Lcn/mucang/android/core/webview/f;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/mucang/android/core/webview/HtmlExtra$b;->J(Ljava/lang/String;)Lcn/mucang/android/core/webview/HtmlExtra$b;

    .line 4
    :try_start_0
    iget-object v1, p0, Lcn/mucang/android/core/webview/f;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "mc_show_title_bar"

    const/4 v3, 0x1

    .line 5
    invoke-virtual {v1, v2, v3}, Landroid/net/Uri;->getBooleanQueryParameter(Ljava/lang/String;Z)Z

    move-result v2

    .line 6
    invoke-virtual {v0, v2}, Lcn/mucang/android/core/webview/HtmlExtra$b;->L(Z)Lcn/mucang/android/core/webview/HtmlExtra$b;

    const-string v4, "mc_hide_option_button"

    const/4 v5, 0x0

    .line 7
    invoke-virtual {v1, v4, v5}, Landroid/net/Uri;->getBooleanQueryParameter(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v0, v3}, Lcn/mucang/android/core/webview/HtmlExtra$b;->K(Z)Lcn/mucang/android/core/webview/HtmlExtra$b;

    if-nez v2, :cond_2

    .line 8
    invoke-virtual {v0, v5}, Lcn/mucang/android/core/webview/HtmlExtra$b;->D(Z)Lcn/mucang/android/core/webview/HtmlExtra$b;

    :cond_2
    const-string v2, "mc_native_request_location"

    .line 9
    invoke-virtual {v1, v2, v5}, Landroid/net/Uri;->getBooleanQueryParameter(Ljava/lang/String;Z)Z

    move-result v1

    .line 10
    invoke-virtual {v0, v1}, Lcn/mucang/android/core/webview/HtmlExtra$b;->H(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    const-string v2, "e"

    .line 11
    invoke-static {v2, v1}, Lcn/mucang/android/core/utils/t;->c(Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-object v0
.end method
