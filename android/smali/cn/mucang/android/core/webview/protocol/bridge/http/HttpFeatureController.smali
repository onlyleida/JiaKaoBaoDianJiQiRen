.class public final Lcn/mucang/android/core/webview/protocol/bridge/http/HttpFeatureController;
.super Lcn/mucang/android/core/webview/core/c;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u0000 \u000f2\u00020\u0001:\u0001\u000fB\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J&\u0010\u0007\u001a\u00020\u00082\u0008\u0010\t\u001a\u0004\u0018\u00010\n2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000c2\u0008\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcn/mucang/android/core/webview/protocol/bridge/http/HttpFeatureController;",
        "Lcn/mucang/android/core/webview/core/EmptyWebViewController;",
        "coreJsBridge",
        "Lcn/mucang/android/core/webview/core/JsBridge;",
        "protocolHandler",
        "Lcn/mucang/android/core/webview/core/ProtocolHandler;",
        "(Lcn/mucang/android/core/webview/core/JsBridge;Lcn/mucang/android/core/webview/core/ProtocolHandler;)V",
        "onPageStarted",
        "",
        "view",
        "Landroid/webkit/WebView;",
        "url",
        "",
        "favicon",
        "Landroid/graphics/Bitmap;",
        "Companion",
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
.field private final a:Lcn/mucang/android/core/webview/core/d;

.field private final b:Lcn/mucang/android/core/webview/core/j;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcn/mucang/android/core/webview/core/d;Lcn/mucang/android/core/webview/core/j;)V
    .locals 1

    const-string v0, "coreJsBridge"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "protocolHandler"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/core/webview/core/c;-><init>()V

    .line 2
    iput-object p1, p0, Lcn/mucang/android/core/webview/protocol/bridge/http/HttpFeatureController;->a:Lcn/mucang/android/core/webview/core/d;

    .line 3
    iput-object p2, p0, Lcn/mucang/android/core/webview/protocol/bridge/http/HttpFeatureController;->b:Lcn/mucang/android/core/webview/core/j;

    return-void
.end method


# virtual methods
.method public a(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 9

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcn/mucang/android/core/webview/core/c;->a(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 2
    iget-object p2, p0, Lcn/mucang/android/core/webview/protocol/bridge/http/HttpFeatureController;->b:Lcn/mucang/android/core/webview/core/j;

    invoke-virtual {p2}, Lcn/mucang/android/core/webview/core/j;->e()Ljava/util/Collection;

    move-result-object p2

    const/4 p3, 0x0

    if-nez p2, :cond_0

    move-object p2, p3

    goto :goto_0

    :cond_0
    invoke-static {p2}, Lkotlin/collections/s;->O0(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p2

    :goto_0
    if-nez p2, :cond_1

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 3
    :cond_1
    iget-object v0, p0, Lcn/mucang/android/core/webview/protocol/bridge/http/HttpFeatureController;->a:Lcn/mucang/android/core/webview/core/d;

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p2, v1}, Lkotlin/collections/s;->u(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 5
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 6
    check-cast v1, Lcn/mucang/android/core/webview/core/d;

    .line 7
    invoke-virtual {v1}, Lcn/mucang/android/core/webview/core/d;->g()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 8
    :cond_2
    invoke-static {v0}, Lkotlin/collections/s;->x(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p2

    invoke-static {p2}, Lkotlin/collections/s;->T(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p2

    invoke-static {p2}, Lkotlin/collections/s;->O0(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    const-string p2, "listener.luban.mucang.cn/onWebviewClose"

    .line 9
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p2, "listener.luban.mucang.cn/hide"

    .line 10
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p2, "listener.luban.mucang.cn/show"

    .line 11
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p2, "listener.luban.mucang.cn/shareChannel"

    .line 12
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 13
    sget-object v6, Lcn/mucang/android/core/webview/protocol/bridge/http/HttpFeatureController$onPageStarted$featureJsArray$1;->INSTANCE:Lcn/mucang/android/core/webview/protocol/bridge/http/HttpFeatureController$onPageStarted$featureJsArray$1;

    const/16 v7, 0x1e

    const/4 v8, 0x0

    const-string v1, ","

    invoke-static/range {v0 .. v8}, Lkotlin/collections/s;->m0(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/b/l;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    if-nez p1, :cond_3

    goto :goto_2

    .line 14
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\n                javascript:(function() { \n                     window.mucang.features = new Array("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ");\n                   })()\n            "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 15
    invoke-static {p2}, Lkotlin/text/l;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 16
    invoke-virtual {p1, p2, p3}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    :goto_2
    return-void
.end method
