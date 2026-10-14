.class Lcn/mucang/android/core/webview/core/page/WebViewPage$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/core/webview/core/page/WebViewPage;->onCreate(Landroid/content/Context;Lcn/mucang/android/core/ui/page/d;Lcn/mucang/android/core/ui/page/PageView;)V
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
    iput-object p1, p0, Lcn/mucang/android/core/webview/core/page/WebViewPage$e;->a:Lcn/mucang/android/core/webview/core/page/WebViewPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/webview/core/page/WebViewPage$e;->a:Lcn/mucang/android/core/webview/core/page/WebViewPage;

    invoke-virtual {v0}, Lcn/mucang/android/core/webview/core/page/WebViewPage;->hideLoadingView()V

    return-void
.end method
