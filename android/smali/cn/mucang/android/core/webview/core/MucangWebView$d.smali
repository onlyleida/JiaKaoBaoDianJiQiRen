.class Lcn/mucang/android/core/webview/core/MucangWebView$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/core/webview/core/MucangWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Lcn/mucang/android/core/webview/core/MucangWebView;


# direct methods
.method constructor <init>(Lcn/mucang/android/core/webview/core/MucangWebView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/core/webview/core/MucangWebView$d;->a:Lcn/mucang/android/core/webview/core/MucangWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMucangWebViewCallbackData()Ljava/lang/String;
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/webview/core/MucangWebView$d;->a:Lcn/mucang/android/core/webview/core/MucangWebView;

    invoke-static {v0}, Lcn/mucang/android/core/webview/core/MucangWebView;->e(Lcn/mucang/android/core/webview/core/MucangWebView;)Lcn/mucang/android/core/webview/core/j;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/core/webview/core/j;->k()Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "in getMucangWebViewCallbackData, data--->\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MucangWebView"

    invoke-static {v2, v1}, Lcn/mucang/android/core/utils/t;->a(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method
