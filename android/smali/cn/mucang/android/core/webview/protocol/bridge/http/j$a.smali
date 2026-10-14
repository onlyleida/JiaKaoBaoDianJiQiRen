.class public final Lcn/mucang/android/core/webview/protocol/bridge/http/j$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/core/webview/protocol/bridge/http/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0016\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Lcn/mucang/android/core/webview/protocol/bridge/http/HttpJsBridgeApi$Companion;",
        "",
        "()V",
        "enableJsBridgePostInterceptor",
        "",
        "api",
        "Lcn/mucang/android/core/webview/protocol/bridge/http/HttpJsBridgeApi;",
        "httpParams",
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


# static fields
.field static final synthetic a:Lcn/mucang/android/core/webview/protocol/bridge/http/j$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcn/mucang/android/core/webview/protocol/bridge/http/j$a;

    invoke-direct {v0}, Lcn/mucang/android/core/webview/protocol/bridge/http/j$a;-><init>()V

    sput-object v0, Lcn/mucang/android/core/webview/protocol/bridge/http/j$a;->a:Lcn/mucang/android/core/webview/protocol/bridge/http/j$a;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final b(Lcn/mucang/android/core/webview/protocol/bridge/http/r/a;Lcn/mucang/android/core/api/request/c;)V
    .locals 3

    const-string v0, "$httpParams"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lcn/mucang/android/core/api/request/c;->c()Lcn/mucang/android/core/api/request/e/c;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcn/mucang/android/core/webview/protocol/bridge/http/r/a;->e()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcn/mucang/android/core/api/request/e/c;->j(J)V

    .line 2
    :goto_0
    invoke-virtual {p0}, Lcn/mucang/android/core/webview/protocol/bridge/http/r/a;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/core/http/MucangNameValuePair;

    .line 3
    invoke-virtual {v1}, Lcn/mucang/android/core/http/MucangNameValuePair;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcn/mucang/android/core/http/MucangNameValuePair;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Lcn/mucang/android/core/api/request/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcn/mucang/android/core/api/request/c;

    goto :goto_1

    .line 4
    :cond_1
    new-instance v0, Lcn/mucang/android/core/webview/protocol/bridge/http/d;

    invoke-direct {v0, p1, p0}, Lcn/mucang/android/core/webview/protocol/bridge/http/d;-><init>(Lcn/mucang/android/core/api/request/c;Lcn/mucang/android/core/webview/protocol/bridge/http/r/a;)V

    invoke-virtual {p1, v0}, Lcn/mucang/android/core/api/request/c;->q(Lcn/mucang/android/core/api/request/c$a;)V

    return-void
.end method

.method private static final c(Lcn/mucang/android/core/api/request/c;Lcn/mucang/android/core/webview/protocol/bridge/http/r/a;)Ljava/lang/String;
    .locals 2

    const-string v0, "$httpParams"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcn/mucang/android/core/api/request/c;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcn/mucang/android/core/api/request/c;->e()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Lcn/mucang/android/core/webview/protocol/bridge/http/r/a;->g()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    .line 4
    invoke-static {p0, v0, v0}, Lcn/mucang/android/core/api/f/c;->a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 6
    :goto_0
    invoke-virtual {p1}, Lcn/mucang/android/core/webview/protocol/bridge/http/r/a;->f()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcn/mucang/android/core/api/request/f/a;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lcn/mucang/android/core/webview/protocol/bridge/http/r/a;Lcn/mucang/android/core/api/request/c;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/core/webview/protocol/bridge/http/j$a;->b(Lcn/mucang/android/core/webview/protocol/bridge/http/r/a;Lcn/mucang/android/core/api/request/c;)V

    return-void
.end method

.method public static synthetic e(Lcn/mucang/android/core/api/request/c;Lcn/mucang/android/core/webview/protocol/bridge/http/r/a;)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/core/webview/protocol/bridge/http/j$a;->c(Lcn/mucang/android/core/api/request/c;Lcn/mucang/android/core/webview/protocol/bridge/http/r/a;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Lcn/mucang/android/core/webview/protocol/bridge/http/j;Lcn/mucang/android/core/webview/protocol/bridge/http/r/a;)V
    .locals 1

    const-string v0, "api"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "httpParams"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    instance-of v0, p1, Lcn/mucang/android/core/api/a;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lcn/mucang/android/core/api/a;

    new-instance v0, Lcn/mucang/android/core/webview/protocol/bridge/http/c;

    invoke-direct {v0, p2}, Lcn/mucang/android/core/webview/protocol/bridge/http/c;-><init>(Lcn/mucang/android/core/webview/protocol/bridge/http/r/a;)V

    invoke-virtual {p1, v0}, Lcn/mucang/android/core/api/a;->addRequestInterceptor(Lcn/mucang/android/core/api/request/d/a;)V

    :cond_0
    return-void
.end method
