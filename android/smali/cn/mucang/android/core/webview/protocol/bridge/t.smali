.class public final synthetic Lcn/mucang/android/core/webview/protocol/bridge/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/core/webview/protocol/d/a$a;


# instance fields
.field public final synthetic a:Lcn/mucang/android/core/webview/protocol/bridge/NativeJsBridge;

.field public final synthetic b:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/android/core/webview/protocol/bridge/NativeJsBridge;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/core/webview/protocol/bridge/t;->a:Lcn/mucang/android/core/webview/protocol/bridge/NativeJsBridge;

    iput-object p2, p0, Lcn/mucang/android/core/webview/protocol/bridge/t;->b:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 2

    iget-object v0, p0, Lcn/mucang/android/core/webview/protocol/bridge/t;->a:Lcn/mucang/android/core/webview/protocol/bridge/NativeJsBridge;

    iget-object v1, p0, Lcn/mucang/android/core/webview/protocol/bridge/t;->b:Ljava/util/Map;

    invoke-virtual {v0, v1, p1}, Lcn/mucang/android/core/webview/protocol/bridge/NativeJsBridge;->k(Ljava/util/Map;Z)V

    return-void
.end method
