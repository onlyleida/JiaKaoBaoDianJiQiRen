.class Lcn/mucang/android/account/protocol/bridge/UserJsBridge$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/account/i/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/account/protocol/bridge/UserJsBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/mucang/android/account/protocol/bridge/UserJsBridge;


# direct methods
.method constructor <init>(Lcn/mucang/android/account/protocol/bridge/UserJsBridge;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/account/protocol/bridge/UserJsBridge$a;->a:Lcn/mucang/android/account/protocol/bridge/UserJsBridge;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public b(Lcn/mucang/android/account/data/AuthUser;)V
    .locals 0

    return-void
.end method

.method public c(Lcn/mucang/android/account/data/AuthUser;)V
    .locals 0

    return-void
.end method

.method public d(Lcn/mucang/android/account/data/AuthUser;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcn/mucang/android/account/protocol/bridge/UserJsBridge$a;->a:Lcn/mucang/android/account/protocol/bridge/UserJsBridge;

    invoke-static {p1}, Lcn/mucang/android/account/protocol/bridge/UserJsBridge;->access$000(Lcn/mucang/android/account/protocol/bridge/UserJsBridge;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcn/mucang/android/account/protocol/bridge/UserJsBridge$a;->a:Lcn/mucang/android/account/protocol/bridge/UserJsBridge;

    invoke-static {p1}, Lcn/mucang/android/account/protocol/bridge/UserJsBridge;->access$300(Lcn/mucang/android/account/protocol/bridge/UserJsBridge;)Lcn/mucang/android/core/webview/core/MucangWebView;

    move-result-object p1

    invoke-virtual {p1}, Lcn/mucang/android/core/webview/core/MucangWebView;->getProtocolHandler()Lcn/mucang/android/core/webview/core/j;

    move-result-object p1

    iget-object v0, p0, Lcn/mucang/android/account/protocol/bridge/UserJsBridge$a;->a:Lcn/mucang/android/account/protocol/bridge/UserJsBridge;

    invoke-static {v0}, Lcn/mucang/android/account/protocol/bridge/UserJsBridge;->access$000(Lcn/mucang/android/account/protocol/bridge/UserJsBridge;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcn/mucang/android/account/protocol/bridge/UserJsBridge$a;->a:Lcn/mucang/android/account/protocol/bridge/UserJsBridge;

    invoke-static {v1}, Lcn/mucang/android/account/protocol/bridge/UserJsBridge;->access$100(Lcn/mucang/android/account/protocol/bridge/UserJsBridge;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcn/mucang/android/core/webview/core/j;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lcn/mucang/android/account/protocol/bridge/UserJsBridge$a;->a:Lcn/mucang/android/account/protocol/bridge/UserJsBridge;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcn/mucang/android/account/protocol/bridge/UserJsBridge;->access$002(Lcn/mucang/android/account/protocol/bridge/UserJsBridge;Ljava/lang/String;)Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public e(Lcn/mucang/android/account/data/AuthUser;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcn/mucang/android/account/protocol/bridge/UserJsBridge$a;->a:Lcn/mucang/android/account/protocol/bridge/UserJsBridge;

    invoke-static {p1}, Lcn/mucang/android/account/protocol/bridge/UserJsBridge;->access$000(Lcn/mucang/android/account/protocol/bridge/UserJsBridge;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcn/mucang/android/account/protocol/bridge/UserJsBridge$a;->a:Lcn/mucang/android/account/protocol/bridge/UserJsBridge;

    invoke-static {p1}, Lcn/mucang/android/account/protocol/bridge/UserJsBridge;->access$200(Lcn/mucang/android/account/protocol/bridge/UserJsBridge;)Lcn/mucang/android/core/webview/core/MucangWebView;

    move-result-object p1

    invoke-virtual {p1}, Lcn/mucang/android/core/webview/core/MucangWebView;->getProtocolHandler()Lcn/mucang/android/core/webview/core/j;

    move-result-object p1

    iget-object v0, p0, Lcn/mucang/android/account/protocol/bridge/UserJsBridge$a;->a:Lcn/mucang/android/account/protocol/bridge/UserJsBridge;

    invoke-static {v0}, Lcn/mucang/android/account/protocol/bridge/UserJsBridge;->access$000(Lcn/mucang/android/account/protocol/bridge/UserJsBridge;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcn/mucang/android/account/protocol/bridge/UserJsBridge$a;->a:Lcn/mucang/android/account/protocol/bridge/UserJsBridge;

    invoke-static {v1}, Lcn/mucang/android/account/protocol/bridge/UserJsBridge;->access$100(Lcn/mucang/android/account/protocol/bridge/UserJsBridge;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcn/mucang/android/core/webview/core/j;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lcn/mucang/android/account/protocol/bridge/UserJsBridge$a;->a:Lcn/mucang/android/account/protocol/bridge/UserJsBridge;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcn/mucang/android/account/protocol/bridge/UserJsBridge;->access$002(Lcn/mucang/android/account/protocol/bridge/UserJsBridge;Ljava/lang/String;)Ljava/lang/String;

    :cond_0
    return-void
.end method
