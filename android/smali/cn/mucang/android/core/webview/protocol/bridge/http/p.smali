.class public final Lcn/mucang/android/core/webview/protocol/bridge/http/p;
.super Lcn/mucang/android/core/api/a;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/core/webview/protocol/bridge/http/j;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0008\u0001\u0018\u00002\u00020\u00012\u00020\u0002B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005J\u0008\u0010\u0006\u001a\u00020\u0007H\u0014J\n\u0010\u0008\u001a\u0004\u0018\u00010\u0007H\u0014J\u0008\u0010\t\u001a\u00020\u0007H\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\n"
    }
    d2 = {
        "Lcn/mucang/android/core/webview/protocol/bridge/http/HttpJsBridgePostFormApi;",
        "Lcn/mucang/android/core/api/BaseApi;",
        "Lcn/mucang/android/core/webview/protocol/bridge/http/HttpJsBridgeApi;",
        "params",
        "Lcn/mucang/android/core/webview/protocol/bridge/http/params/HttpJsBridgePostFormParams;",
        "(Lcn/mucang/android/core/webview/protocol/bridge/http/params/HttpJsBridgePostFormParams;)V",
        "getApiHost",
        "",
        "getSignKey",
        "httpRequest",
        "webview_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private final b:Lcn/mucang/android/core/webview/protocol/bridge/http/r/c;


# direct methods
.method public constructor <init>(Lcn/mucang/android/core/webview/protocol/bridge/http/r/c;)V
    .locals 1

    const-string v0, "params"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/core/api/a;-><init>()V

    .line 2
    iput-object p1, p0, Lcn/mucang/android/core/webview/protocol/bridge/http/p;->b:Lcn/mucang/android/core/webview/protocol/bridge/http/r/c;

    .line 3
    sget-object v0, Lcn/mucang/android/core/webview/protocol/bridge/http/j;->a:Lcn/mucang/android/core/webview/protocol/bridge/http/j$a;

    invoke-virtual {v0, p0, p1}, Lcn/mucang/android/core/webview/protocol/bridge/http/j$a;->a(Lcn/mucang/android/core/webview/protocol/bridge/http/j;Lcn/mucang/android/core/webview/protocol/bridge/http/r/a;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/webview/protocol/bridge/http/p;->b:Lcn/mucang/android/core/webview/protocol/bridge/http/r/c;

    invoke-virtual {v0}, Lcn/mucang/android/core/webview/protocol/bridge/http/r/a;->d()Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcn/mucang/android/core/webview/protocol/bridge/http/p;->b:Lcn/mucang/android/core/webview/protocol/bridge/http/r/c;

    invoke-virtual {v1}, Lcn/mucang/android/core/webview/protocol/bridge/http/r/c;->h()Ljava/util/List;

    move-result-object v1

    .line 3
    iget-object v2, p0, Lcn/mucang/android/core/webview/protocol/bridge/http/p;->b:Lcn/mucang/android/core/webview/protocol/bridge/http/r/c;

    invoke-virtual {v2}, Lcn/mucang/android/core/webview/protocol/bridge/http/r/a;->a()Z

    move-result v2

    .line 4
    invoke-super {p0, v0, v1, v2}, Lcn/mucang/android/core/api/a;->httpPost(Ljava/lang/String;Ljava/util/List;Z)Lcn/mucang/android/core/api/ApiResponse;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcn/mucang/android/core/api/ApiResponse;->getRawString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "super.httpPost(\n        \u2026/\u662f\u5426\u52a0\u5bc6\n        ).rawString"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method protected getApiHost()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/webview/protocol/bridge/http/p;->b:Lcn/mucang/android/core/webview/protocol/bridge/http/r/c;

    invoke-virtual {v0}, Lcn/mucang/android/core/webview/protocol/bridge/http/r/a;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getSignKey()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/webview/protocol/bridge/http/p;->b:Lcn/mucang/android/core/webview/protocol/bridge/http/r/c;

    invoke-virtual {v0}, Lcn/mucang/android/core/webview/protocol/bridge/http/r/a;->f()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
