.class public final Lcn/mucang/android/core/webview/protocol/bridge/http/k$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/core/webview/protocol/bridge/http/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcn/mucang/android/core/webview/protocol/bridge/http/HttpJsBridgeApiFactory$Companion;",
        "",
        "()V",
        "get",
        "Lcn/mucang/android/core/webview/protocol/bridge/http/HttpJsBridgeApi;",
        "params",
        "Lcn/mucang/android/core/webview/protocol/bridge/http/params/HttpJsBridgeBaseParams;",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/o;)V
    .locals 0

    invoke-direct {p0}, Lcn/mucang/android/core/webview/protocol/bridge/http/k$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcn/mucang/android/core/webview/protocol/bridge/http/r/a;)Lcn/mucang/android/core/webview/protocol/bridge/http/j;
    .locals 2

    const-string v0, "params"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    instance-of v0, p1, Lcn/mucang/android/core/webview/protocol/bridge/http/r/d;

    if-eqz v0, :cond_0

    new-instance v0, Lcn/mucang/android/core/webview/protocol/bridge/http/q;

    check-cast p1, Lcn/mucang/android/core/webview/protocol/bridge/http/r/d;

    invoke-direct {v0, p1}, Lcn/mucang/android/core/webview/protocol/bridge/http/q;-><init>(Lcn/mucang/android/core/webview/protocol/bridge/http/r/d;)V

    goto :goto_0

    .line 2
    :cond_0
    instance-of v0, p1, Lcn/mucang/android/core/webview/protocol/bridge/http/r/c;

    if-eqz v0, :cond_1

    new-instance v0, Lcn/mucang/android/core/webview/protocol/bridge/http/p;

    check-cast p1, Lcn/mucang/android/core/webview/protocol/bridge/http/r/c;

    invoke-direct {v0, p1}, Lcn/mucang/android/core/webview/protocol/bridge/http/p;-><init>(Lcn/mucang/android/core/webview/protocol/bridge/http/r/c;)V

    goto :goto_0

    .line 3
    :cond_1
    instance-of v0, p1, Lcn/mucang/android/core/webview/protocol/bridge/http/r/b;

    if-eqz v0, :cond_3

    .line 4
    check-cast p1, Lcn/mucang/android/core/webview/protocol/bridge/http/r/b;

    invoke-virtual {p1}, Lcn/mucang/android/core/webview/protocol/bridge/http/r/b;->h()Z

    move-result v0

    if-nez v0, :cond_2

    .line 5
    new-instance v0, Lcn/mucang/android/core/webview/protocol/bridge/http/l;

    invoke-direct {v0, p1}, Lcn/mucang/android/core/webview/protocol/bridge/http/l;-><init>(Lcn/mucang/android/core/webview/protocol/bridge/http/r/b;)V

    goto :goto_0

    .line 6
    :cond_2
    new-instance v0, Lcn/mucang/android/core/webview/protocol/bridge/http/n;

    invoke-direct {v0, p1}, Lcn/mucang/android/core/webview/protocol/bridge/http/n;-><init>(Lcn/mucang/android/core/webview/protocol/bridge/http/r/b;)V

    :goto_0
    return-object v0

    .line 7
    :cond_3
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "api params not supported yet:"

    invoke-static {v1, p1}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
