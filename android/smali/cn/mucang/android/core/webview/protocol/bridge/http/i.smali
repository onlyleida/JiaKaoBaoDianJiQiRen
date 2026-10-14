.class public final Lcn/mucang/android/core/webview/protocol/bridge/http/i;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\u0010\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0002\u00a8\u0006\u0004"
    }
    d2 = {
        "chooseCacheStrategy",
        "Lcn/mucang/android/core/api/cache/CacheConfig;",
        "h5RequestParam",
        "Lcn/mucang/android/core/webview/protocol/bridge/http/H5HttpRequestParams;",
        "webview_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final synthetic a(Lcn/mucang/android/core/webview/protocol/bridge/http/g;)Lcn/mucang/android/core/api/cache/c;
    .locals 0

    .line 1
    invoke-static {p0}, Lcn/mucang/android/core/webview/protocol/bridge/http/i;->b(Lcn/mucang/android/core/webview/protocol/bridge/http/g;)Lcn/mucang/android/core/api/cache/c;

    move-result-object p0

    return-object p0
.end method

.method private static final b(Lcn/mucang/android/core/webview/protocol/bridge/http/g;)Lcn/mucang/android/core/api/cache/c;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/core/webview/protocol/bridge/http/g;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcn/mucang/android/core/api/cache/CacheMode;->AUTO:Lcn/mucang/android/core/api/cache/CacheMode;

    goto :goto_0

    .line 3
    :cond_0
    sget-object v0, Lcn/mucang/android/core/api/cache/CacheMode;->REMOTE_FIRST:Lcn/mucang/android/core/api/cache/CacheMode;

    .line 4
    :goto_0
    new-instance v1, Lcn/mucang/android/core/api/cache/c$a;

    invoke-static {}, Lcn/mucang/android/core/api/cache/c;->h()Lcn/mucang/android/core/api/cache/c;

    move-result-object v2

    invoke-direct {v1, v2}, Lcn/mucang/android/core/api/cache/c$a;-><init>(Lcn/mucang/android/core/api/cache/c;)V

    .line 5
    invoke-virtual {v1, v0}, Lcn/mucang/android/core/api/cache/c$a;->c(Lcn/mucang/android/core/api/cache/CacheMode;)Lcn/mucang/android/core/api/cache/c$a;

    .line 6
    invoke-virtual {p0}, Lcn/mucang/android/core/webview/protocol/bridge/http/g;->h()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcn/mucang/android/core/api/cache/c$a;->g(J)Lcn/mucang/android/core/api/cache/c$a;

    .line 7
    invoke-virtual {v1}, Lcn/mucang/android/core/api/cache/c$a;->a()Lcn/mucang/android/core/api/cache/c;

    move-result-object p0

    const-string v0, "Builder(CacheConfig.crea\u2026TimeOut)\n        .build()"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
