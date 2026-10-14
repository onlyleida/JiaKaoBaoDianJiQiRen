.class Lcn/mucang/android/core/webview/protocol/bridge/SystemJsBridge$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/core/webview/k/b$k;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/core/webview/protocol/bridge/SystemJsBridge;->showConfirmDialog(Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Map;

.field final synthetic b:Lcn/mucang/android/core/webview/protocol/bridge/SystemJsBridge;


# direct methods
.method constructor <init>(Lcn/mucang/android/core/webview/protocol/bridge/SystemJsBridge;Ljava/util/Map;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/core/webview/protocol/bridge/SystemJsBridge$d;->b:Lcn/mucang/android/core/webview/protocol/bridge/SystemJsBridge;

    iput-object p2, p0, Lcn/mucang/android/core/webview/protocol/bridge/SystemJsBridge$d;->a:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 6

    const-string v0, "callbackName"

    .line 1
    :try_start_0
    iget-object v1, p0, Lcn/mucang/android/core/webview/protocol/bridge/SystemJsBridge$d;->b:Lcn/mucang/android/core/webview/protocol/bridge/SystemJsBridge;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string v5, ""

    invoke-virtual {v1, v2, v3, v4, v5}, Lcn/mucang/android/core/webview/protocol/bridge/j0;->buildCallbackData(Ljava/lang/Object;ZILjava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    .line 2
    iget-object v2, p0, Lcn/mucang/android/core/webview/protocol/bridge/SystemJsBridge$d;->b:Lcn/mucang/android/core/webview/protocol/bridge/SystemJsBridge;

    iget-object v2, v2, Lcn/mucang/android/core/webview/protocol/bridge/j0;->webView:Lcn/mucang/android/core/webview/core/MucangWebView;

    invoke-virtual {v2}, Lcn/mucang/android/core/webview/core/MucangWebView;->getProtocolHandler()Lcn/mucang/android/core/webview/core/j;

    move-result-object v2

    iget-object v3, p0, Lcn/mucang/android/core/webview/protocol/bridge/SystemJsBridge$d;->a:Ljava/util/Map;

    .line 3
    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSON;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcn/mucang/android/core/webview/core/j;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-static {}, Lcn/mucang/android/core/webview/c;->b()Lcn/mucang/android/core/webview/c;

    move-result-object v2

    iget-object v3, p0, Lcn/mucang/android/core/webview/protocol/bridge/SystemJsBridge$d;->a:Ljava/util/Map;

    const-string v4, "___key_web_view_tag"

    .line 5
    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcn/mucang/android/core/utils/y;->g(Ljava/lang/String;)I

    move-result v3

    iget-object v4, p0, Lcn/mucang/android/core/webview/protocol/bridge/SystemJsBridge$d;->a:Ljava/util/Map;

    .line 6
    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 7
    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSON;->toString()Ljava/lang/String;

    move-result-object v1

    .line 8
    invoke-virtual {v2, v3, v0, v1}, Lcn/mucang/android/core/webview/c;->c(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "\u9ed8\u8ba4\u66ff\u6362"

    .line 9
    invoke-static {v1, v0}, Lcn/mucang/android/core/utils/t;->c(Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public onCancel()V
    .locals 6

    const-string v0, "callbackName"

    .line 1
    :try_start_0
    iget-object v1, p0, Lcn/mucang/android/core/webview/protocol/bridge/SystemJsBridge$d;->b:Lcn/mucang/android/core/webview/protocol/bridge/SystemJsBridge;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string v5, ""

    invoke-virtual {v1, v2, v3, v4, v5}, Lcn/mucang/android/core/webview/protocol/bridge/j0;->buildCallbackData(Ljava/lang/Object;ZILjava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    .line 2
    iget-object v2, p0, Lcn/mucang/android/core/webview/protocol/bridge/SystemJsBridge$d;->b:Lcn/mucang/android/core/webview/protocol/bridge/SystemJsBridge;

    iget-object v2, v2, Lcn/mucang/android/core/webview/protocol/bridge/j0;->webView:Lcn/mucang/android/core/webview/core/MucangWebView;

    invoke-virtual {v2}, Lcn/mucang/android/core/webview/core/MucangWebView;->getProtocolHandler()Lcn/mucang/android/core/webview/core/j;

    move-result-object v2

    iget-object v3, p0, Lcn/mucang/android/core/webview/protocol/bridge/SystemJsBridge$d;->a:Ljava/util/Map;

    .line 3
    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSON;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcn/mucang/android/core/webview/core/j;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-static {}, Lcn/mucang/android/core/webview/c;->b()Lcn/mucang/android/core/webview/c;

    move-result-object v2

    iget-object v3, p0, Lcn/mucang/android/core/webview/protocol/bridge/SystemJsBridge$d;->a:Ljava/util/Map;

    const-string v4, "___key_web_view_tag"

    .line 5
    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcn/mucang/android/core/utils/y;->g(Ljava/lang/String;)I

    move-result v3

    iget-object v4, p0, Lcn/mucang/android/core/webview/protocol/bridge/SystemJsBridge$d;->a:Ljava/util/Map;

    .line 6
    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 7
    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSON;->toString()Ljava/lang/String;

    move-result-object v1

    .line 8
    invoke-virtual {v2, v3, v0, v1}, Lcn/mucang/android/core/webview/c;->c(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "\u9ed8\u8ba4\u66ff\u6362"

    .line 9
    invoke-static {v1, v0}, Lcn/mucang/android/core/utils/t;->c(Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
