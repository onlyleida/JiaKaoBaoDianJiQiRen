.class Lcn/mucang/android/core/webview/core/g$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/core/webview/k/b$l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/core/webview/core/g;->w()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/mucang/android/core/webview/core/g;


# direct methods
.method constructor <init>(Lcn/mucang/android/core/webview/core/g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/core/webview/core/g$a;->a:Lcn/mucang/android/core/webview/core/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/webview/core/g$a;->a:Lcn/mucang/android/core/webview/core/g;

    invoke-static {v0}, Lcn/mucang/android/core/webview/core/g;->a(Lcn/mucang/android/core/webview/core/g;)V

    return-void
.end method

.method public onDismiss()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/webview/core/g$a;->a:Lcn/mucang/android/core/webview/core/g;

    invoke-static {v0}, Lcn/mucang/android/core/webview/core/g;->b(Lcn/mucang/android/core/webview/core/g;)Lcn/mucang/android/core/webview/core/MucangWebView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    return-void
.end method
