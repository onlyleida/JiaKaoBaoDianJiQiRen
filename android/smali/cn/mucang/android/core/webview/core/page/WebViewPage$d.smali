.class Lcn/mucang/android/core/webview/core/page/WebViewPage$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/core/webview/core/page/WebViewPage;->hideLoadingView()V
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
    iput-object p1, p0, Lcn/mucang/android/core/webview/core/page/WebViewPage$d;->a:Lcn/mucang/android/core/webview/core/page/WebViewPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcn/mucang/android/core/webview/core/page/WebViewPage$d;->a:Lcn/mucang/android/core/webview/core/page/WebViewPage;

    invoke-static {p1}, Lcn/mucang/android/core/webview/core/page/WebViewPage;->access$400(Lcn/mucang/android/core/webview/core/page/WebViewPage;)Lcn/mucang/android/core/ui/page/PageView;

    move-result-object p1

    invoke-virtual {p1}, Lcn/mucang/android/core/ui/page/PageView;->getLoadingView()Landroid/webkit/WebView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/webkit/WebView;->destroy()V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
