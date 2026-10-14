.class public final Lcn/mucang/android/core/webview/protocol/bridge/http/o;
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
        "params",
        "Lcn/mucang/android/core/webview/protocol/bridge/http/params/HttpJsBridgeGetParams;",
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
.method public static final synthetic a(Lcn/mucang/android/core/webview/protocol/bridge/http/r/b;)Lcn/mucang/android/core/api/cache/c;
    .locals 0

    .line 1
    invoke-static {p0}, Lcn/mucang/android/core/webview/protocol/bridge/http/o;->b(Lcn/mucang/android/core/webview/protocol/bridge/http/r/b;)Lcn/mucang/android/core/api/cache/c;

    move-result-object p0

    return-object p0
.end method

.method private static final b(Lcn/mucang/android/core/webview/protocol/bridge/http/r/b;)Lcn/mucang/android/core/api/cache/c;
    .locals 3

    .line 1
    new-instance v0, Lcn/mucang/android/core/api/cache/c$a;

    invoke-static {}, Lcn/mucang/android/core/api/cache/c;->h()Lcn/mucang/android/core/api/cache/c;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/mucang/android/core/api/cache/c$a;-><init>(Lcn/mucang/android/core/api/cache/c;)V

    .line 2
    sget-object v1, Lcn/mucang/android/core/api/cache/CacheMode;->AUTO:Lcn/mucang/android/core/api/cache/CacheMode;

    invoke-virtual {v0, v1}, Lcn/mucang/android/core/api/cache/c$a;->c(Lcn/mucang/android/core/api/cache/CacheMode;)Lcn/mucang/android/core/api/cache/c$a;

    .line 3
    invoke-virtual {p0}, Lcn/mucang/android/core/webview/protocol/bridge/http/r/a;->e()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcn/mucang/android/core/api/cache/c$a;->g(J)Lcn/mucang/android/core/api/cache/c$a;

    .line 4
    invoke-virtual {v0}, Lcn/mucang/android/core/api/cache/c$a;->a()Lcn/mucang/android/core/api/cache/c;

    move-result-object p0

    const-string v0, "Builder(CacheConfig.crea\u2026meOutMs)\n        .build()"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
