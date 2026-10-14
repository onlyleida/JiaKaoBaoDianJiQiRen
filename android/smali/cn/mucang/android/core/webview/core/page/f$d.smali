.class Lcn/mucang/android/core/webview/core/page/f$d;
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
.field final synthetic a:Lcn/mucang/android/core/webview/core/page/f;


# direct methods
.method constructor <init>(Lcn/mucang/android/core/webview/core/page/f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/core/webview/core/page/f$d;->a:Lcn/mucang/android/core/webview/core/page/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/webview/core/page/f$d;->a:Lcn/mucang/android/core/webview/core/page/f;

    invoke-static {v0}, Lcn/mucang/android/core/webview/core/page/f;->b(Lcn/mucang/android/core/webview/core/page/f;)Lcn/mucang/android/core/webview/core/page/WebViewPage;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/core/webview/core/page/WebViewPage;->hideLoadingView()V

    return-void
.end method
