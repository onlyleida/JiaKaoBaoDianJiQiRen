.class public final synthetic Lcn/mucang/android/core/webview/protocol/bridge/b0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/core/webview/core/d$a;


# instance fields
.field public final synthetic a:Lcn/mucang/android/core/webview/protocol/bridge/WebJsBridge;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/android/core/webview/protocol/bridge/WebJsBridge;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/core/webview/protocol/bridge/b0;->a:Lcn/mucang/android/core/webview/protocol/bridge/WebJsBridge;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/Map;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/mucang/android/core/webview/protocol/bridge/b0;->a:Lcn/mucang/android/core/webview/protocol/bridge/WebJsBridge;

    invoke-virtual {v0, p1}, Lcn/mucang/android/core/webview/protocol/bridge/WebJsBridge;->i(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
