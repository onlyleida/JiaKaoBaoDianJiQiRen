.class public final Lcn/mucang/android/core/webview/protocol/bridge/http/l;
.super Lcn/mucang/android/core/api/a;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/core/webview/protocol/bridge/http/j;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0008\u0001\u0018\u00002\u00020\u00012\u00020\u0002B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005J\u0008\u0010\u0008\u001a\u00020\tH\u0014J\n\u0010\n\u001a\u0004\u0018\u00010\tH\u0014J\u0008\u0010\u000b\u001a\u00020\tH\u0016R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcn/mucang/android/core/webview/protocol/bridge/http/HttpJsBridgeGetApi;",
        "Lcn/mucang/android/core/api/BaseApi;",
        "Lcn/mucang/android/core/webview/protocol/bridge/http/HttpJsBridgeApi;",
        "params",
        "Lcn/mucang/android/core/webview/protocol/bridge/http/params/HttpJsBridgeGetParams;",
        "(Lcn/mucang/android/core/webview/protocol/bridge/http/params/HttpJsBridgeGetParams;)V",
        "logic",
        "Lcn/mucang/android/core/webview/protocol/bridge/http/HttpJsBridgeGetApiLogic;",
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
.field private final b:Lcn/mucang/android/core/webview/protocol/bridge/http/r/b;

.field private final c:Lcn/mucang/android/core/webview/protocol/bridge/http/m;


# direct methods
.method public constructor <init>(Lcn/mucang/android/core/webview/protocol/bridge/http/r/b;)V
    .locals 1

    const-string v0, "params"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/core/api/a;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/core/webview/protocol/bridge/http/l;->b:Lcn/mucang/android/core/webview/protocol/bridge/http/r/b;

    .line 2
    new-instance v0, Lcn/mucang/android/core/webview/protocol/bridge/http/m;

    invoke-direct {v0, p1, p0}, Lcn/mucang/android/core/webview/protocol/bridge/http/m;-><init>(Lcn/mucang/android/core/webview/protocol/bridge/http/r/b;Lcn/mucang/android/core/api/a;)V

    iput-object v0, p0, Lcn/mucang/android/core/webview/protocol/bridge/http/l;->c:Lcn/mucang/android/core/webview/protocol/bridge/http/m;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/webview/protocol/bridge/http/l;->b:Lcn/mucang/android/core/webview/protocol/bridge/http/r/b;

    invoke-virtual {v0}, Lcn/mucang/android/core/webview/protocol/bridge/http/r/a;->d()Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Lcn/mucang/android/core/api/a;->httpGet(Ljava/lang/String;)Lcn/mucang/android/core/api/ApiResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/core/api/ApiResponse;->getRawString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "super.httpGet(params.path).rawString"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method protected getApiHost()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/webview/protocol/bridge/http/l;->c:Lcn/mucang/android/core/webview/protocol/bridge/http/m;

    invoke-virtual {v0}, Lcn/mucang/android/core/webview/protocol/bridge/http/m;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getSignKey()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/webview/protocol/bridge/http/l;->c:Lcn/mucang/android/core/webview/protocol/bridge/http/m;

    invoke-virtual {v0}, Lcn/mucang/android/core/webview/protocol/bridge/http/m;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
