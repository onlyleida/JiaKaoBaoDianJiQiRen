.class Lcn/mucang/android/core/webview/e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/core/webview/e;->E()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/mucang/android/core/webview/e;


# direct methods
.method constructor <init>(Lcn/mucang/android/core/webview/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/core/webview/e$a;->a:Lcn/mucang/android/core/webview/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 3

    .line 1
    check-cast p1, Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getHitTestResult()Landroid/webkit/WebView$HitTestResult;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/webkit/WebView$HitTestResult;->getType()I

    move-result v1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_2

    const/16 v2, 0x8

    if-ne v1, v2, :cond_1

    goto :goto_0

    :cond_1
    return v0

    .line 3
    :cond_2
    :goto_0
    iget-object v0, p0, Lcn/mucang/android/core/webview/e$a;->a:Lcn/mucang/android/core/webview/e;

    invoke-virtual {p1}, Landroid/webkit/WebView$HitTestResult;->getExtra()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/mucang/android/core/webview/e;->N(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcn/mucang/android/core/webview/e$a;->a:Lcn/mucang/android/core/webview/e;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/d;

    move-result-object v0

    .line 5
    instance-of v1, v0, Lcn/mucang/android/core/webview/HTML5Activity;

    if-eqz v1, :cond_3

    .line 6
    check-cast v0, Lcn/mucang/android/core/webview/HTML5Activity;

    invoke-virtual {p1}, Landroid/webkit/WebView$HitTestResult;->getExtra()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcn/mucang/android/core/webview/HTML5Activity;->j(Ljava/lang/String;)V

    :cond_3
    const/4 p1, 0x1

    return p1
.end method
