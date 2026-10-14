.class Lcn/mucang/android/core/webview/core/page/f$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/core/webview/core/page/f;->f(Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/mucang/android/core/webview/core/page/WebPageArgument;

.field final synthetic b:Landroid/net/Uri;

.field final synthetic c:Lcn/mucang/android/core/webview/core/page/f;


# direct methods
.method constructor <init>(Lcn/mucang/android/core/webview/core/page/f;Lcn/mucang/android/core/webview/core/page/WebPageArgument;Landroid/net/Uri;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/core/webview/core/page/f$b;->c:Lcn/mucang/android/core/webview/core/page/f;

    iput-object p2, p0, Lcn/mucang/android/core/webview/core/page/f$b;->a:Lcn/mucang/android/core/webview/core/page/WebPageArgument;

    iput-object p3, p0, Lcn/mucang/android/core/webview/core/page/f$b;->b:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/webview/core/page/f$b;->c:Lcn/mucang/android/core/webview/core/page/f;

    invoke-static {v0}, Lcn/mucang/android/core/webview/core/page/f;->b(Lcn/mucang/android/core/webview/core/page/f;)Lcn/mucang/android/core/webview/core/page/WebViewPage;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/core/webview/core/page/WebViewPage;->isSelf()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcn/mucang/android/core/webview/core/page/f$b;->c:Lcn/mucang/android/core/webview/core/page/f;

    invoke-static {v0}, Lcn/mucang/android/core/webview/core/page/f;->a(Lcn/mucang/android/core/webview/core/page/f;)Lcn/mucang/android/core/ui/page/d;

    move-result-object v0

    new-instance v1, Lcn/mucang/android/core/ui/page/PageHistory;

    const-class v2, Lcn/mucang/android/core/webview/core/page/WebViewPage;

    iget-object v3, p0, Lcn/mucang/android/core/webview/core/page/f$b;->a:Lcn/mucang/android/core/webview/core/page/WebPageArgument;

    iget-object v4, p0, Lcn/mucang/android/core/webview/core/page/f$b;->b:Landroid/net/Uri;

    const-string v5, "name"

    .line 3
    invoke-virtual {v4, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcn/mucang/android/core/ui/page/PageHistory;-><init>(Ljava/lang/Class;Lcn/mucang/android/core/ui/page/PageArgument;Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0, v1}, Lcn/mucang/android/core/ui/page/d;->x(Lcn/mucang/android/core/ui/page/PageHistory;)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {}, Lcn/mucang/android/core/webview/core/page/AsteroidManager;->d()Lcn/mucang/android/core/webview/core/page/AsteroidManager;

    move-result-object v0

    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->getContext()Landroid/app/Application;

    move-result-object v1

    iget-object v2, p0, Lcn/mucang/android/core/webview/core/page/f$b;->a:Lcn/mucang/android/core/webview/core/page/WebPageArgument;

    invoke-virtual {v2}, Lcn/mucang/android/core/webview/core/page/WebPageArgument;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/mucang/android/core/webview/core/page/AsteroidManager;->h(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
