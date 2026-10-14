.class Lcn/mucang/android/core/webview/k/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/core/webview/k/a;->c(Ljava/util/Map;Lcn/mucang/android/core/webview/core/h;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/mucang/android/core/webview/core/h;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcn/mucang/android/core/webview/j/a;

.field final synthetic d:Ljava/util/List;


# direct methods
.method constructor <init>(Lcn/mucang/android/core/webview/core/h;Ljava/lang/String;Lcn/mucang/android/core/webview/j/a;Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/core/webview/k/a$a;->a:Lcn/mucang/android/core/webview/core/h;

    iput-object p2, p0, Lcn/mucang/android/core/webview/k/a$a;->b:Ljava/lang/String;

    iput-object p3, p0, Lcn/mucang/android/core/webview/k/a$a;->c:Lcn/mucang/android/core/webview/j/a;

    iput-object p4, p0, Lcn/mucang/android/core/webview/k/a$a;->d:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/webview/k/a$a;->a:Lcn/mucang/android/core/webview/core/h;

    invoke-virtual {v0}, Lcn/mucang/android/core/webview/core/h;->b()Lcn/mucang/android/core/webview/core/MucangWebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcn/mucang/android/core/webview/k/a$a;->b:Ljava/lang/String;

    iget-object v2, p0, Lcn/mucang/android/core/webview/k/a$a;->c:Lcn/mucang/android/core/webview/j/a;

    iget-object v3, p0, Lcn/mucang/android/core/webview/k/a$a;->d:Ljava/util/List;

    invoke-static {v0, v1, v2, v3}, Lcn/mucang/android/core/webview/k/a;->a(Landroid/content/Context;Ljava/lang/String;Lcn/mucang/android/core/webview/j/a;Ljava/util/List;)V

    return-void
.end method
