.class Lcn/mucang/android/core/api/verify/geetest/b$c;
.super Landroid/webkit/WebView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/core/api/verify/geetest/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/core/api/verify/geetest/b$c$a;
    }
.end annotation


# instance fields
.field private a:Lcn/mucang/android/core/api/verify/geetest/b$c$a;

.field final synthetic b:Lcn/mucang/android/core/api/verify/geetest/b;


# direct methods
.method public constructor <init>(Lcn/mucang/android/core/api/verify/geetest/b;Landroid/content/Context;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcn/mucang/android/core/api/verify/geetest/b$c;->b:Lcn/mucang/android/core/api/verify/geetest/b;

    .line 2
    invoke-direct {p0, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 3
    new-instance p1, Lcn/mucang/android/core/api/verify/geetest/b$c$a;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcn/mucang/android/core/api/verify/geetest/b$c$a;-><init>(Lcn/mucang/android/core/api/verify/geetest/b$c;Lcn/mucang/android/core/api/verify/geetest/b$a;)V

    iput-object p1, p0, Lcn/mucang/android/core/api/verify/geetest/b$c;->a:Lcn/mucang/android/core/api/verify/geetest/b$c$a;

    .line 4
    invoke-direct {p0, p2}, Lcn/mucang/android/core/api/verify/geetest/b$c;->a(Landroid/content/Context;)V

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 3
    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 4
    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 5
    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    .line 6
    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    const/4 p1, 0x2

    .line 7
    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->setOverScrollMode(I)V

    const/4 p1, 0x0

    .line 8
    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    .line 9
    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 10
    iget-object p1, p0, Lcn/mucang/android/core/api/verify/geetest/b$c;->a:Lcn/mucang/android/core/api/verify/geetest/b$c$a;

    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 11
    invoke-static {p0}, Lcn/mucang/android/core/utils/MiscUtils;->l(Landroid/webkit/WebView;)Landroid/webkit/WebView;

    .line 12
    invoke-virtual {p0}, Landroid/webkit/WebView;->onResume()V

    return-void
.end method
