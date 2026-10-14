.class Lcn/mucang/android/core/webview/core/MucangWebView$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/core/webview/core/MucangWebView;->o()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:F

.field b:F

.field final synthetic c:I

.field final synthetic d:Lcn/mucang/android/core/webview/core/MucangWebView;


# direct methods
.method constructor <init>(Lcn/mucang/android/core/webview/core/MucangWebView;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/core/webview/core/MucangWebView$a;->d:Lcn/mucang/android/core/webview/core/MucangWebView;

    iput p2, p0, Lcn/mucang/android/core/webview/core/MucangWebView$a;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    iget-object p1, p0, Lcn/mucang/android/core/webview/core/MucangWebView$a;->d:Lcn/mucang/android/core/webview/core/MucangWebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/core/webview/client/f;->b(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_3

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    .line 4
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    .line 5
    iget v1, p0, Lcn/mucang/android/core/webview/core/MucangWebView$a;->a:F

    sub-float/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget v1, p0, Lcn/mucang/android/core/webview/core/MucangWebView$a;->c:I

    int-to-float v1, v1

    cmpg-float p1, p1, v1

    if-gez p1, :cond_4

    iget p1, p0, Lcn/mucang/android/core/webview/core/MucangWebView$a;->b:F

    sub-float/2addr p2, p1

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget p2, p0, Lcn/mucang/android/core/webview/core/MucangWebView$a;->c:I

    int-to-float p2, p2

    cmpg-float p1, p1, p2

    if-gez p1, :cond_4

    .line 6
    iget-object p1, p0, Lcn/mucang/android/core/webview/core/MucangWebView$a;->d:Lcn/mucang/android/core/webview/core/MucangWebView;

    invoke-static {p1}, Lcn/mucang/android/core/webview/core/MucangWebView;->a(Lcn/mucang/android/core/webview/core/MucangWebView;)Lcn/mucang/android/core/webview/core/MucangWebView$f;

    move-result-object p1

    if-nez p1, :cond_2

    .line 7
    iget-object p1, p0, Lcn/mucang/android/core/webview/core/MucangWebView$a;->d:Lcn/mucang/android/core/webview/core/MucangWebView;

    invoke-static {p1}, Lcn/mucang/android/core/webview/core/MucangWebView;->b(Lcn/mucang/android/core/webview/core/MucangWebView;)Lcn/mucang/android/core/webview/core/h;

    move-result-object p2

    invoke-virtual {p2}, Lcn/mucang/android/core/webview/core/h;->c()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 8
    :cond_2
    iget-object p1, p0, Lcn/mucang/android/core/webview/core/MucangWebView$a;->d:Lcn/mucang/android/core/webview/core/MucangWebView;

    invoke-static {p1}, Lcn/mucang/android/core/webview/core/MucangWebView;->a(Lcn/mucang/android/core/webview/core/MucangWebView;)Lcn/mucang/android/core/webview/core/MucangWebView$f;

    move-result-object p1

    invoke-interface {p1}, Lcn/mucang/android/core/webview/core/MucangWebView$f;->a()V

    goto :goto_0

    .line 9
    :cond_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iput p1, p0, Lcn/mucang/android/core/webview/core/MucangWebView$a;->a:F

    .line 10
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcn/mucang/android/core/webview/core/MucangWebView$a;->b:F

    :cond_4
    :goto_0
    return v0
.end method
