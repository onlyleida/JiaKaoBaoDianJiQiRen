.class public final synthetic Lcn/mucang/android/core/webview/protocol/bridge/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcn/mucang/android/core/webview/protocol/bridge/WebJsBridge;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/android/core/webview/protocol/bridge/WebJsBridge;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/core/webview/protocol/bridge/z;->a:Lcn/mucang/android/core/webview/protocol/bridge/WebJsBridge;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcn/mucang/android/core/webview/protocol/bridge/z;->a:Lcn/mucang/android/core/webview/protocol/bridge/WebJsBridge;

    invoke-virtual {v0}, Lcn/mucang/android/core/webview/protocol/bridge/WebJsBridge;->m()V

    return-void
.end method
