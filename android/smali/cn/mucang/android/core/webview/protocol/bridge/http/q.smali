.class public final Lcn/mucang/android/core/webview/protocol/bridge/http/q;
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
        "Lcn/mucang/android/core/webview/protocol/bridge/http/HttpJsBridgePostMultiPartApi;",
        "Lcn/mucang/android/core/api/BaseApi;",
        "Lcn/mucang/android/core/webview/protocol/bridge/http/HttpJsBridgeApi;",
        "params",
        "Lcn/mucang/android/core/webview/protocol/bridge/http/params/HttpJsBridgePostMultiPartParams;",
        "(Lcn/mucang/android/core/webview/protocol/bridge/http/params/HttpJsBridgePostMultiPartParams;)V",
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
.field private final b:Lcn/mucang/android/core/webview/protocol/bridge/http/r/d;


# direct methods
.method public constructor <init>(Lcn/mucang/android/core/webview/protocol/bridge/http/r/d;)V
    .locals 1

    const-string v0, "params"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/core/api/a;-><init>()V

    .line 2
    iput-object p1, p0, Lcn/mucang/android/core/webview/protocol/bridge/http/q;->b:Lcn/mucang/android/core/webview/protocol/bridge/http/r/d;

    .line 3
    sget-object v0, Lcn/mucang/android/core/webview/protocol/bridge/http/j;->a:Lcn/mucang/android/core/webview/protocol/bridge/http/j$a;

    invoke-virtual {v0, p0, p1}, Lcn/mucang/android/core/webview/protocol/bridge/http/j$a;->a(Lcn/mucang/android/core/webview/protocol/bridge/http/j;Lcn/mucang/android/core/webview/protocol/bridge/http/r/a;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 5

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/webview/protocol/bridge/http/q;->b:Lcn/mucang/android/core/webview/protocol/bridge/http/r/d;

    invoke-virtual {v0}, Lcn/mucang/android/core/webview/protocol/bridge/http/r/a;->a()Z

    move-result v0

    const-string v1, "{\n            super.http\u2026    ).rawString\n        }"

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcn/mucang/android/core/webview/protocol/bridge/http/q;->b:Lcn/mucang/android/core/webview/protocol/bridge/http/r/d;

    invoke-virtual {v0}, Lcn/mucang/android/core/webview/protocol/bridge/http/r/a;->d()Ljava/lang/String;

    move-result-object v0

    .line 3
    iget-object v2, p0, Lcn/mucang/android/core/webview/protocol/bridge/http/q;->b:Lcn/mucang/android/core/webview/protocol/bridge/http/r/d;

    invoke-virtual {v2}, Lcn/mucang/android/core/webview/protocol/bridge/http/r/d;->h()Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-super {p0, v0, v2}, Lcn/mucang/android/core/api/a;->httpPostEncrypted(Ljava/lang/String;Ljava/lang/String;)Lcn/mucang/android/core/api/ApiResponse;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcn/mucang/android/core/api/ApiResponse;->getRawString()Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/core/webview/protocol/bridge/http/q;->b:Lcn/mucang/android/core/webview/protocol/bridge/http/r/d;

    invoke-virtual {v0}, Lcn/mucang/android/core/webview/protocol/bridge/http/r/a;->d()Ljava/lang/String;

    move-result-object v0

    .line 8
    iget-object v2, p0, Lcn/mucang/android/core/webview/protocol/bridge/http/q;->b:Lcn/mucang/android/core/webview/protocol/bridge/http/r/d;

    invoke-virtual {v2}, Lcn/mucang/android/core/webview/protocol/bridge/http/r/d;->h()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lkotlin/text/d;->a:Ljava/nio/charset/Charset;

    const-string v4, "null cannot be cast to non-null type java.lang.String"

    invoke-static {v2, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    const-string v3, "(this as java.lang.String).getBytes(charset)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x1

    .line 9
    invoke-super {p0, v0, v2, v3}, Lcn/mucang/android/core/api/a;->httpPost(Ljava/lang/String;[BZ)Lcn/mucang/android/core/api/ApiResponse;

    move-result-object v0

    .line 10
    invoke-virtual {v0}, Lcn/mucang/android/core/api/ApiResponse;->getRawString()Ljava/lang/String;

    move-result-object v0

    .line 11
    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method

.method protected getApiHost()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/webview/protocol/bridge/http/q;->b:Lcn/mucang/android/core/webview/protocol/bridge/http/r/d;

    invoke-virtual {v0}, Lcn/mucang/android/core/webview/protocol/bridge/http/r/a;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getSignKey()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/webview/protocol/bridge/http/q;->b:Lcn/mucang/android/core/webview/protocol/bridge/http/r/d;

    invoke-virtual {v0}, Lcn/mucang/android/core/webview/protocol/bridge/http/r/a;->f()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
